### MYSQL WORKSHOP

## Workshop prerequisites installations

1. [Download and install docker](https://docs.docker.com/get-docker/)
   1. Verify installation: run "docker ps" in console. 
2. [Download and install mysql workbench](https://dev.mysql.com/downloads/workbench/)
   1. After pressing download you'll be asked to login or register, just skip it using the "No thanks, just start my download." click (see pic)
   <img src="https://github.com/monday-u-com/workshop-9/blob/main/pics/workpic.jpeg" width="600" height="500">


### Workshop DB setup
Execute the following command to run the container with new DB:

docker run --name mysql_workshop \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=password \
-e MYSQL_ROOT_HOST=% \
-e MYSQL_DATABASE=mysql_workshop \
-d mysql/mysql-server

This will create a docker container running a mysql db named "mysql_workshop".

Let's connect to the DB using mysql workbench.

Create new connection in mysql workbench, configure and test your connection:
   <img src="https://github.com/monday-u-com/workshop-9/blob/main/pics/connectpic.png" width="800" height="450">

Now You should be able to see the mysql_workshop DB and run queries on it. 

Download [workshop_create_table.sql](https://github.com/monday-u-com/workshop-9/blob/main/workshop_create_table.sql) and execute it in workbench. This will create the tables for our Football DB.

Download [workshop_instert_data.sql](https://github.com/monday-u-com/workshop-9/blob/main/workshop_instert_data.sql) and execute it in workbench. This will insert data to the tables in our DB.

### Workshop exercises

Write SQL queries:

1. How many players from Serbia exists in our DB?
2. Which country has the most players in our DB?
3. Name all players who assist a goal in match 41 (without a join)
4. Name all players who assist a goal in match 41 (using join)
5. Name all players who are attackers and didn’t score any goal (using left join)
6. Use explain to get information about the last query (screenshot your results)
7. Add index to players table on position column
8. Run explain again - what are the differences? meanings?
9. Using transaction, write a query to get the youngest manager and move him to a new club 

