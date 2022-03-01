- Risk: Security Misconfigurations can lead to breaches within the system that allow the attacker to access files and routes not authorized to.
- solution: limit permissions by protecting restricted files by disallowing directories.
- Method:
    1. access to robots.txt file to view disallowed routes for bots.
    2. navigate to .hidden
    3. run a script that crawl directories in .hidden through url and README files then return the flag if founded (text that contain numbers)
    - Script
    
    ```jsx
    #!/bin/bash
    mkdir ./garbage
    wget --mirror -A  README -P ./garbage -e robots=off $1/.hidden/
    find ./garbage -name README | xargs grep [0-9]
    rm -rf ./garbage
    ```