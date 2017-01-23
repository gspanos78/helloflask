import socket
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    hostname = socket.gethostname()
    return_string = "Hello from {}!".format(hostname)
    return return_string


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

