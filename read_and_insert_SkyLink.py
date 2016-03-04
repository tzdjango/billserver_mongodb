
import json
import urllib2
import pymongo
from pymongo import MongoClient
from bottle import route, run, response, template
from json import dumps

# connect to mongo
connection = MongoClient("mongodb://localhost:27017")

# get a handle to the reddit database
db=connection.SkyDB
bills = db.Bills
bills.drop()

# get the reddit home page
skyLink = urllib2.urlopen("http://safe-plains-5453.herokuapp.com/bill.json")

# parse the json into python objects
parsed = json.loads(skyLink.read())

print parsed['total']
# iterate through every news item on the page
#for item in parsed:
    # put it in mongo
#    stories.insert(item['data'])

bills.insert(parsed)

@route('/')
def index():
    return template('bill.tpl', parsed )

run(host='localhost', port=5000)



