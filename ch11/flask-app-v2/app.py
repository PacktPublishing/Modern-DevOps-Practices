from flask import Flask
from flask import make_response

app = Flask(__name__)

@app.route('/')
def index():
  return "This is version 2"

@app.route('/<page>')
def default(page):
  response = make_response('The page %s does not exist.' % page, 404)
  return response

if __name__ == '__main__':
  app.run(debug=True)
