#!/usr/bin/env python3
from flask import Flask,render_template
import socket
import os

hostname = socket.gethostname()
ipaddress = socket.gethostbyname(hostname)
appver = os.environ['APP_VERSION']

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html', hostname=hostname, ipaddress=ipaddress, appver=appver)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
