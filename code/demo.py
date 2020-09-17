from flask import Flask, render_template, request, jsonify


app = Flask(__name__)

@app.route("/")
def home():
   return "Hello Master Branch"
    


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=9092)
