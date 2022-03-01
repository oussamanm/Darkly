- Risk: leave unprotected files can lead to previlege escalation within the server and gain  unauthorized access or knowledge
- Solution:
    - prohibit users to access specific routes/files that has sensitive data and gain unauthorized data in the system.
- Method
    1. access to robots.txt file to view disallowed routes for bots.
    2. navigate to .htpasswd and get the encrypted password
    3. decrypt password
    4. Go to /admin route and pass the credentials