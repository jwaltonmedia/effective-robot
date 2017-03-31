# simple webserver - can upload and display images
import os
from flask import Flask
from flask import jsonify
from bin.get_cv_version import get_cv_version

app = Flask(__name__)

@app.route("/")
def index():
    text = 'You\'re running version %s of OpenCV' % get_cv_version()
    return jsonify(message=text)

if __name__ == "__main__":
    app.run(
        debug=os.environ['FLASK_DEBUG'],
        host=os.environ['FLASK_HOST'],
        port=int(os.environ['FLASK_PORT'])
    )
