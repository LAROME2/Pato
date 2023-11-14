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
    df = pd.read_sql_query(f"SELECT * FROM mqtt_data WHERE id_Refri = {selected_refri} ORDER BY tiempo DESC", conn)
    conn.close()
    return df

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
        conn = sqlite3.connect('mqtt_data.sqlite')
        df = pd.read_sql_query("SELECT * FROM mqtt_data ORDER BY tiempo DESC LIMIT 10", conn)
        conn.close()

        # Extracting data for the table
        tabla1 = df[["tiempo","temperatura"]]
        
        # Get unique refris
        refris = list(df["id_Refri"].unique())

        # Get the selected refri from the request
        selected_refri = request.args.get('refri', refris[0])  # Default to the first refri if not specified

        # Filter the DataFrame based on the selected refri
        filtered_df = df[df['id_Refri'] == int(selected_refri)]

        latest_temperature = filtered_df.iloc[0]['temperatura']
        latest_date = filtered_df.iloc[0]['tiempo']

        tabla_html = filtered_df.to_html(classes='table table-bordered table-striped', index=False)

        fig = px.line(filtered_df, x='tiempo', y='temperatura',text='temperatura')
        fig.update_traces(textposition="bottom right")

        return render_template('viz.html',tabla_html=tabla_html, plot=fig.to_html(), refris=refris, selected_refri=selected_refri, latest_temperature=latest_temperature, latest_date=latest_date)
        
    elif requet.method == "POST":
        conn = sqlite3.connect('mqtt_data.sqlite')
        df = pd.read_sql_query("SELECT * FROM mqtt_data ORDER BY tiempo DESC LIMIT 10", conn)
        conn.close()

        # Extracting data for the table
        tabla1 = df[["tiempo","temperatura"]]
        
        # Get unique refris
        refris = list(df["id_Refri"].unique())

        # Get the selected refri from the request
        selected_refri = request.args.get('refri', refris[0])  # Default to the first refri if not specified

        # Filter the DataFrame based on the selected refri
        filtered_df = df[df['id_Refri'] == int(selected_refri)]

        tabla_html = filtered_df.to_html(classes='table table-bordered table-striped', index=False)

        fig = px.line(filtered_df, x='tiempo', y='temperatura',text='temperatura')
        fig.update_traces(textposition="bottom right")

        return render_template('viz.html',tabla_html=tabla_html, plot=fig.to_html(), refris=refris, selected_refri=selected_refri)

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


if __name__ == '__main__':
    app.run(debug=True)
