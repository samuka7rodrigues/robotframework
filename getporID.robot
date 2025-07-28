*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***

    



*** Variables ***
#Criar as variaveis e se for para usar para testes usar o comando 
${response} =  GET  https://restful-booker.herokuapp.com/booking/1013


*** Test Cases ***
Cenário 1: Consultar reservas por ID
    ${firstname}=  Get From Dictionary    ${response.json()}    firstname
    Should Be Equal As Strings    ${firstname}    John





*** Comments ***
