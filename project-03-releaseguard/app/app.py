import os
from flask import Flask, jsonify

app = Flask(__name__)
APP_VERSION = os.environ.get("APP_VERSION", "1.0.0")

@app.route("/")
def index():
    return jsonify({"status": "ok", "message": "ReleaseGuard Protected Service"})

@app.route("/health")
def health():
    # Симуляція перевірки здоров'я
    return jsonify({"status": "healthy"}), 200

@app.route("/version")
def version():
    return jsonify({"version": APP_VERSION}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
