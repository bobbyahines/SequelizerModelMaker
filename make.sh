#!/usr/bin/env bash

db_host=''
db_port=''
db_name=''
db_user=''
db_pass=''

commandone="sequelize-auto --host $db_host --database $db_name --user $db_user --pass $db_pass --port $db_port --dialect mysql --output ./Models --camel"
commandtwo="sequelize-auto --host $db_host --database $db_name --user $db_user --pass $db_pass --port $db_port --dialect mysql --output ./TypeScriptModels --camel -z"

docker build -f Dockerfile -t bobbyahines/makemodels:latest .
docker run -it --rm --name modelmaker -v $PWD:/srv bobbyahines/makemodels:latest $commandone
docker run -it --rm --name modelmaker -v $PWD:/srv bobbyahines/makemodels:latest $commandtwo
