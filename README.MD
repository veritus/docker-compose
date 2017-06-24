# Docker compose for Veritus

This repository contains the docker-compose file that expresses our whole stack.

It also contains some scripts for easier startup.

Its required to install docker-compose first (here)[https://docs.docker.com/compose/install/] before starting

## Start whole stack
docker-start.sh is the script that starts the whole stack

It takes in two variables, Database username and password

```
$ ./docker-start.sh <DB_USER> <DB_PASS>
```
Example
```
$ ./docker-start.sh postgres password
```

After that visit localhost:8000 in a browser and see that Django is running. If you go to 
```
localhost:8000/api/v1/parties
```
for example you should see the initialized list of parties.


## Start just backend
backend-start.sh is a script that starts up just the backend

It takes in two variables, Database username and password

```
$ ./backend-start.sh <DB_USER> <DB_PASS>
```
Example
```
$ ./backend-start.sh postgres password
```

After that visit localhost:8000 in a browser and see that Django is running. If you go to 
```
localhost:8000/api/v1/parties
```
for example you should see the initialized list of parties.