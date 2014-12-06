db.zips.aggregate([{$project:{ city: {$substr:["$city",0,1]}, pop:"$pop"}}, {$match: {city:{$regex:'[0-9]'}}}, {$group:{_id:null, sum:{$sum:"$pop"}}} ])
