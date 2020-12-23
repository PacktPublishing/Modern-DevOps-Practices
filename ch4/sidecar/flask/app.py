import time
import redis
from flask import Flask
from datetime import datetime

app = Flask(__name__)
cache = redis.Redis(host='localhost', port=6379)

def get_secret():
    try:
        secret = cache.get('secret')
        return secret
    except redis.exceptions.ConnectionError as e:
        raise e

@app.route('/')
def index():
    secret = str(get_secret().decode('utf-8'))
    return 'Hi there! The secret is {}.\n'.format(secret)
