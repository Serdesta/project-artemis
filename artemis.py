from flask import Flask
from flask import render_template


app = Flask(__name__)
app.config['WTF_CSRF_ENABLED'] = True # Sensitive

@app.route('/')
def index():
    return 'Welcome to Artemis E-commerse web application. <h1>V2</h1>'


if __name__ == '__main__':
    app.run(debug=true, host='0.0.0.0')