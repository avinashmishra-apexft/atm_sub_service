# README

This is an ATM sub service which accepts a non-negative amount of money as an input and responds with a way to make change for that amount of money.

Follow the below steps to produce a result:
- Spin up the rails server using the command `rails s -p 3000`
- Hit the api end point `http://localhost:3000/requests/get_denominations?input_amount=100` in your browser
- System will respond with a json object which contains the status, message and data for the sent request.

Examples:
```
request: http://localhost:3000/requests/get_denominations?input_amount=41
response:
    {
        "status":200,
        "message":"OK",
        "data":{
            "quarters":1,
            "dimes":1,
            "nickels":1,
            "pennies":1
        }
    }
```
```
request: http://localhost:3000/requests/get_denominations?input_amount=hello400
response:
    {
        "status":400,
        "message":"Bad Request/422",
        "data":{}
    }
```
