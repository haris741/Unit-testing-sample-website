from flask import Flask, redirect, render_template, session, request, flash, url_for
from flaskext.mysql import MySQL
from pymysql import connect
from sqlalchemy import null
from flask import request


database = "local"
mysql = MySQL()
app = Flask(__name__)
app.secret_key = "123"

if database == "local":
    app.config['MYSQL_DATABASE_USER'] = "root"
    app.config['MYSQL_DATABASE_PASSWORD'] = ""
    app.config['MYSQL_DATABASE_HOST'] = "localhost"
    app.config['MYSQL_DATABASE_DB'] = "unittesting"

# Initialize MySQL
mysql.init_app(app)
connection = mysql.connect()
cursor = connection.cursor()

# Domain URL
if database == "local":
    domain_url = 'http://127.0.0.1:5000/'

else:
    domain_url = '/'


@app.route("/login" ,methods = ['POST', 'GET'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']
        cursor.execute("SELECT id FROM users  WHERE (email = %s AND password = %s)", (email, password))

        if cursor.rowcount == 1:
            query_data = cursor.fetchone()
            user_id = query_data[0]
            session['user'] = user_id
            return redirect(url_for('driver_dashboard'))
            # return user_home()
        else:
            flash("Incorrect Email or Password. Try Again!")
            return render_template ("login.html" , title='Login')
    else:
        if "user" in session:
            return index()
        return render_template ("login.html" , title='Login')


# admin logout
@app.route("/logout")
def admin_logout():
    if "user" in session:
        session.pop("admin", None)
    return redirect (url_for("adminlogin")) # redirect url_for use

@app.route("/dashboard")
def index():
    return render_template('a_dashboard.html')



if __name__ == "__main__":
    app.debug = True
