- Risk: Gives the attacker access to read and write in database through queries and .. become administrator of the database server.
- Solution: input validation and parametrized queries including prepared statements and show no database errors to the user
- Method
    - using semicolon to check if an sql injection detect in members page
    - display all tables and search for tables which have some authentication credentials.
    - access to list images
    - decrypt password to md5 then encrypt it to sha256
        - **EX**: Passing corespondent value and add union to get additional info
            
            ```jsx
            //extract all tables from database
            UNION SELECT table_schema, table_name FROM information_schema.tables
            //get flag from list_images table
            1 UNION (SELECT id,CONCAT(url, title,  comment ) from list_images)--
            ```