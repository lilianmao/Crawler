#-*- coding:utf8 -*-
from flask import Flask, request, render_template

app = Flask(__name__)

#路由重定向

@app.route('/', methods=['GET','POST'])
def home():
    page_list=['1', '2', '3', '4', '5']
    return render_template('home.html', page_list = page_list)

@app.route('/signin', methods=['GET'])
def signin_form():
    return render_template('form.html')

@app.route('/signin', methods=['POST'])
def signin():
    username = request.form['username']
    password = request.form['password']
    if username=='admin' and password=='password':
        return render_template('signin-ok.html', username = username)
    return render_template('form.html', message='Error', username = username)

if __name__ == '__main__':
    app.run()
