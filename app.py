from flask import Flask
app = Flask(__name__)
@app.route("/komal")
def lw():
  return("welcome to my world....\n")
app.run(host="0.0.0.0")
