from project import create_app

# Call the Application Factory function to construct a Flask application instance
# using the standard configuration defined in /instance/flask.cfg
app = create_app('flask.cfg')
if __name__ == "__main__":
    app.run(host="0.0.0.0")
