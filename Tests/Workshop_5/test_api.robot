*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com
Test Teardown    Output    response body    ${outputdir}/Tests/Workshop_5/response12.json
Resource    ../../Resources/API_test/users.py

*** Variables ***
${new_user}    {"id": 11, "name": "Franta Vomacka"}

*** Test Cases ***
Many New Users
    [Template]    New users
    :FOR     ${user}    IN    @{new_test_users}
    \     ${new_user}
    
*** Keywords ***
New users
    POST     /users     ${new_user} 
    Integer    response status    200    201    202    204


*** inactive ***
       Output    request body    ${outputdir}/Tests/Workshop_5/request5.json
       Output    response    ${outputdir}/Tests/Workshop_5/response3.json
       String    response body name    Leanne Graham
       Integer    response status    200
       
Verify Required Fields
       GET    /users/1
       Object    response body    required=["id", "name"] 
       Expect Response Body    {"required":["id", "name"]}
       Clear Expectations
       
Delete A User
       DELETE    /users/1
       Integer    response status    200    201    202    204
       
Create new user
    POST    /users/    ${new_user}
    Varibles:
    ${new_user}    {"id": 11, "name": "Franta Vomacka"}

Update user
    PUT    /users/1    {"new field":"asdfasdf", "money": 100, "single": true}
    Integer    response body money    100
    Boolean    response body single    true