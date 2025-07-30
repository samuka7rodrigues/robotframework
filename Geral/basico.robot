*** Settings ***
Library     RequestsLibrary
Library     OperatingSystem
Library    String

*** Variables ***
${url}   https://restful-booker.herokuapp.com/booking    

*** Test Cases ***
Consultar as reservas cadastradas
    ${response}=  GET  ${url}
    log  ${response.text}
    Should Be True  ${response.ok}
    Should Be Equal As Strings  ${response.status_code}  200
   