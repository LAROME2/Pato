from flask import (Flask, request, make_response, redirect, render_template, session, url_for, flash)
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm
from wtforms.fields import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired
import unittest
import sqlite3
import pandas as pd


app = Flask(__name__)

app.config['SECRET_KEY'] = 'SUPER SECRETO'

todos = ['Cafe 1','Carne 2', 'Quesos 3']
bootstrap = Bootstrap(app)

class LoginForm(FlaskForm):
    username = StringField('Nombre de Usuario', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Enviar')

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

@app.route ('/')
def index():
    user_ip = request.remote_addr
    response = make_response(redirect('/hello'))
    session['user_ip'] = user_ip

    return response

@app.route('/viz', methods=['GET','POST'])
def viz():
    conn = sqlite3.connect('matt_data.sqlite')
    df = pd.read_sql_query("SELECT * FROM nombre_de_la_tabla", conn)
    conn.close()

    return render_template('viz.html')
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
