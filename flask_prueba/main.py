from flask import (Flask, request, make_response, redirect, render_template, session, url_for, flash)
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm
from wtforms.fields import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired
import unittest
import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
import plotly.express as px


app = Flask(__name__)

app.config['SECRET_KEY'] = 'SUPER SECRETO'

todos = ['Caf 1','leche 2', 'Quesos 3']
bootstrap = Bootstrap(app)

class LoginForm(FlaskForm):
    username = StringField('Nombre de Usuario', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Enviar')

def get_refris():
    conn = sqlite3.connect('mqtt_data.sqlite')
    df = pd.read_sql_query("SELECT DISTINCT id_Refri FROM mqtt_data", conn)
    conn.close()
    return df["id_Refri"].tolist()

def filter_data(selected_refri):
    conn = sqlite3.connect('mqtt_data.sqlite')
    df = pd.read_sql_query(f"SELECT * FROM mqtt_data WHERE id_Refri = {selected_refri} ORDER BY tiempo DESC limit 10", conn)
    conn.close()
    return df

def get_latest_data_for_refri(refri_id):
    conn = sqlite3.connect('mqtt_data.sqlite')
    query = f"SELECT temperatura, tiempo FROM mqtt_data WHERE id_Refri = {refri_id} ORDER BY tiempo DESC LIMIT 1"
    df = pd.read_sql_query(query, conn)
    conn.close()

    # Check if any data is returned
    if not df.empty:
        latest_data = {
            'temperature': df.iloc[0]['temperatura'],
            'date': df.iloc[0]['tiempo']
        }
        return latest_data
    else:
        return None

def get_latest_data_before_for_refri(refri_id):
    conn = sqlite3.connect('mqtt_data.sqlite')
    query = f"SELECT temperatura, tiempo FROM mqtt_data WHERE id_Refri = {refri_id} ORDER BY tiempo DESC LIMIT 2"
    df = pd.read_sql_query(query, conn)
    conn.close()

    # Check if there are at least two records
    if len(df) >= 2:
        latest_data_before = {
            'temperature': df.iloc[1]['temperatura'],
            'date': df.iloc[1]['tiempo']
        }
        return latest_data_before
    else:
        return None

def calculate_percentage_change(current_value, previous_value):
    if previous_value != 0:
        return ((current_value - previous_value) / abs(previous_value)) * 100
    else:
        # Handle division by zero
        return None

@app.cli.command()
def test():
    tests = unittest.TestLoader().discover('tests')
    unittest.TextTestRunner().run(tests)

@app.errorhandler(404)
def not_Found(error):
    return render_template('404.html',error = error)

@app.errorhandler(500)
def not_found(error):
    return render_template('500.html',error=error)

@app.errorhandler(500)
def not_found(error):
    return render_template('500.html',error=error)


@app.route('/login', methods=['GET','POST'])
def login():
    return render_template('login.html')

@app.route ('/')
def index():
    user_ip = request.remote_addr
    response = make_response(redirect('/hello'))
    session['user_ip'] = user_ip

    return response

@app.route('/viz', methods=['GET','POST'])
def viz():
    if request.method == 'GET':
        refris = get_refris()
        selected_refri = request.args.get('refri', refris[0])  # Default to the first refri if not specified
        df = filter_data(selected_refri)

        tabla1 = df[["tiempo", "temperatura"]]
        tabla_html = df.to_html(classes='table table-bordered table-striped', index=False)

        latest_temperature = df.iloc[0]['temperatura']
        latest_date = df.iloc[0]['tiempo']

        fig = px.line(tabla1, x='tiempo', y='temperatura', text='temperatura')
        fig.update_traces(textposition="bottom right")

        return render_template('viz.html', tabla_html=tabla_html, plot=fig.to_html(), refris=refris, selected_refri=selected_refri, latest_date=latest_date, latest_temperature=latest_temperature)


@app.route('/historic', methods=['GET', 'POST'])
def historic():
    if request.method == 'GET':
        refris = get_refris()
        selected_refri = request.args.get('refri', refris[0])  # Default to the first refri if not specified
        df = filter_data(selected_refri)

        # Creating an HTML table from the filtered DataFrame
        tabla_html = df.to_html(classes='table table-bordered table-striped', index=False)

        return render_template('historic.html', tabla_html=tabla_html, refris=refris, selected_refri=selected_refri)

@app.route ('/hello', methods=['GET','POST'])
def hello():

    user_ip = session.get('user_ip')
    login_form = LoginForm()
    username = session.get('username')

    context = {
        'user_ip':user_ip, 
        'todos':todos,
        'login_form': LoginForm(),
        'username': username
    }

    if login_form.validate_on_submit():
        username = login_form.username.data
        session['username'] = username

        flash('Nombre de usuario registrado con éxito')

        return redirect(url_for('index'))

    return render_template('hello.html', **context)

@app.route ('/dashboard', methods=['GET'])
def dashboard():
    refris = get_refris()  # Assuming get_refris() returns a list of refrigerator IDs

    latest_data_per_refri = {}  # Dictionary to store latest data for each refri

    for refri in refris:
        latest_data = get_latest_data_for_refri(refri)
        latest_data_before = get_latest_data_before_for_refri(refri)

        if latest_data and latest_data_before:
            # Calculate percentage change
            percentage_change = calculate_percentage_change(
                latest_data['temperature'], latest_data_before['temperature']
            )
            
            # Add data to the dictionary
            latest_data_per_refri[refri] = {
                'temperature': latest_data['temperature'],
                'date': latest_data['date'],
                'percentage_change': percentage_change
            }
        else:
            # Handle case when no data is available
            latest_data_per_refri[refri] = None

    # Pass the data to the template
    return render_template('dashboard.html', refris=refris, latest_data_per_refri=latest_data_per_refri)


if __name__ == '__main__':
    app.run(debug=True)
