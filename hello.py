import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Hello, World! I am alive and listening."

if __name__ == "__main__":
    # Cloud Run passes the port via the PORT environment variable
    port = int(os.environ.get("PORT", 8080))
    
    # CRITICAL: You must bind to 0.0.0.0, NOT 127.0.0.1
    app.run(debug=True, host="0.0.0.0", port=port)
