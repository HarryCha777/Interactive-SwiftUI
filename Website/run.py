from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def print_privacy_policy():
    return render_template('privacy_policy.html')