from flask import Flask

app = Flask(__name__)

count = 0

@app.route("/")
def blabla():
    global count

    count += 1

    return f"deez nuts {count}"
