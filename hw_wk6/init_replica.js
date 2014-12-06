config = { _id: "rs1", members:[
          { _id : 0, host : "ordep-N43JM:27017", priority:0, slaveDelay:5 },
          { _id : 1, host : "ordep-N43JM:27018"},
          { _id : 2, host : "ordep-N43JM:27019"} ]
};

rs.initiate(config);
rs.status();



