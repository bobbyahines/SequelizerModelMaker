# SequelizerModelMaker (MySQL)

## Quick Start
Edit the included `make.sh` bash script's db variables to reflect your
mysql db's host, port, name, user, and password, then run the script from
shell:
`./make.sh`

## Manual Build

### 1. Build the Dockerfile
`docker build -f Dockerfile -t bobbyahines/modelmaker:latest .`

### 2. Start the application
`docker run -it --rm --name modelmaker -v $PWD:/srv bobbyahines/modelmaker:latest bash`

### 3. Generate Models
From inside the container, run this command while substituting the variables:  
`sequelize-auto --host $db_host --database $db_name --user $db_user --pass $db_pass --port $db_port --dialect mysql --output ./Models --camel`

### 4. Generate TypeScript Models
From inside the container, run this command while substituting the variables:  
`sequelize-auto --host $db_host --database $db_name --user $db_user --pass $db_pass --port $db_port --dialect mysql --output ./TypeScriptModels --camel -z`
