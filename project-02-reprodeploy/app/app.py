import os
import psycopg2
from flask import Flask

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(
        host=os.environ.get("DB_HOST", "db"),
        database=os.environ.get("DB_NAME", "app_db"),
        user=os.environ.get("DB_USER", "app_user"),
        password=os.environ.get("DB_PASSWORD", "secure_password")
    )
    return conn

@app.route("/")
def index():
    try:
        conn = get_db_connection()
        cur = conn.cursor()
        cur.execute("SELECT version();")
        db_version = cur.fetchone()
        cur.close()
        conn.close()
        return f"<h1>ReproDeploy Stack is Running!</h1><p>Connected to PostgreSQL: {db_version[0]}</p>"
    except Exception as e:
        return f"<h1>Error connecting to database</h1><p>{e}</p>", 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
