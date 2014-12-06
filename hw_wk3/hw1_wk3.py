import pymongo
import sys

connection = pymongo.MongoClient("mongodb://localhost")


db = connection.school                 # attach to db
collection = db.students         # specify the colllection

students = collection.find()
for s in students:
    min_score = 100
    for g in s['scores']:
        if g['type'] == 'homework':
            if  g['score'] <= min_score:
                min_score = g['score']
    collection.update({'_id': s['_id']}, {'$pull': {'scores': {'score' : min_score}}} )
