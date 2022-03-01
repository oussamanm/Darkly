- Risk: it allows the attacker to inject malicious code to be executed in the server through user input in forms, cookies, session tokens, response headers, etc...
- solution: input validation
- Method: in media page
    - object tag can execute html text within data attribute
    - the object tag take it data value from url through "src" param
    - encode javascript script to base 64 and pass it to src value with text type "text/html"
    
    ```jsx
    //inject script code in url 
    {IP}/index.php?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgnJyk8L3NjcmlwdD4=
    ```