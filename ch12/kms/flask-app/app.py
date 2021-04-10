from flask import Flask
from flask import make_response
import os

app = Flask(__name__)

@app.route('/')
def index():
  secret = os.environ.get("SECRET")
  return "The secret is "+secret

@app.route('/<page>')
def default(page):
  response = make_response('The page %s does not exist.' % page, 404)
  return response

if __name__ == '__main__':
  app.run(debug=True)
