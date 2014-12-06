#!/usr/bin/env bash

mkdir -p /home/ordep/Software/mongodb/data/rs1 /home/ordep/Software/mongodb/data/rs2 /home/ordep/Software/mongodb/data/rs3

mongod --replSet rs1 --logpath "/home/ordep/Software/mongodb/1.log" --dbpath /home/ordep/Software/mongodb/data/rs1 --port 27017 --oplogSize 64 --fork --smallfiles
mongod --replSet rs1 --logpath "/home/ordep/Software/mongodb/2.log" --dbpath /home/ordep/Software/mongodb/data/rs2 --port 27018 --oplogSize 64 --smallfiles --fork
mongod --replSet rs1 --logpath "/home/ordep/Software/mongodb/3.log" --dbpath /home/ordep/Software/mongodb/data/rs3 --port 27019 --oplogSize 64 --smallfiles --fork
