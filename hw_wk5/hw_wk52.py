db.zips.aggregate([{$match:{$or:[{state:'CA'},{state:'NY'}]}},{$group:{_id:{ct:"$city",st:"$state"}, sum:{$sum:"$pop"}}},{$match:{sum:{$gt:25000}}}, {$group:{_id:null, avg :{$avg:"$sum"}}}])
