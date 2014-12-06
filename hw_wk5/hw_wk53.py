db.grades.aggregate([{$unwind:"$scores"}, {$match:{"scores.type":{'$ne':'quiz'}}}, {$group:{_id:{s:"$student_id", c:"$class_id"}, avg:{$avg:"$scores.score"}}}, {$group:{_id:"$_id.c", avg2:{$avg:"$avg"}}},{$sort:{"avg2":-1}}, { $limit : 1 }])
{ "_id" : 1, "avg2" : 64.50642324269175 }
