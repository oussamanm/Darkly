- Risk: changing request headers can be altered to trick the website that you are coming from a legitimate source.
    - ex: access to user account from other device without the website can trigger any alerts.
- solution: check and validate request headers in server side
- Method: in copyright page
    1. change request headers
        1. User-Agent to ft_bornToSec
        2. Referer to [https://www.nsa.gov/](https://www.nsa.gov/)