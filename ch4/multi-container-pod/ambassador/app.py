import time
import redis
from flask import Flask
from datetime import datetime

app = Flask(__name__)
cache = redis.Redis(host='localhost', port=6379)

def get_last_visited():
    try:
        last_visited = cache.getset('last_visited',str(datetime.now().strftime("%Y-%m-%d, %H:%M:%S")))
        if last_visited is None:
            return cache.getset('last_visited',str(datetime.now().strftime("%Y-%m-%d, %H:%M:%S")))
        return last_visited
    except redis.exceptions.ConnectionError as e:
        raise e

@app.route('/')
def index():
    last_visited = str(get_last_visited().decode('utf-8'))
    return 'Hi there! This page was last visited on {}.\n'.format(last_visited)
