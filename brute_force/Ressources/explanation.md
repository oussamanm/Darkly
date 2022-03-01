- Risk: Gives the attacker access to read and write in database through queries and .. become administrator of the database server.
- solution: input validation and parametrized queries including prepared statements  and limit user permissions + use advanced encryption in passwords
- Method
    - using semicolon to check if an sql injection detect in members page
    - display all tables and search for tables which have some authentication credentials.
    - access to db_default and get admin password encrypted
    - decrypt password and signin...
    - Passing corespondent value and add union to get additional info
        - **EX**:
            
            ```jsx
            //extract all tables from database
            1 UNION SELECT table_schema, table_name FROM information_schema.tables
            //get all authentication credentials of the site
            1 UNION (SELECT id,CONCAT(username, password) from Member_Brute_Force.db_default)--
            ```