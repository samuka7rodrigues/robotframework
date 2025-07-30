*** Settings ***  #Importar as bibliotecas
Library  RequestsLibrary
Library  Collections  #validar as collections do insomnia

*** Keywords ***
<<<<<<< HEAD
Buscar reserva por arguments
=======
Buscar reserva
>>>>>>> bc41871f0458d542212415367b3d0f9611fd09d9
    [Arguments]    ${booking_number}
    ${response}=   GET      https://restful-booker.herokuapp.com/booking/${booking_number}
    [Return]       ${response}

*** Test Cases ***
Cenário 1: Consultar as reservas cadastradas firstname
    ${response}=  Buscar reserva   243
    ${firstnamevalue}=  Get From Dictionary  ${response.json()}    firstname     
    Should Be Equal As Strings    ${firstnamevalue}   Josh    

Cenário 2: Consultar as reservas cadastradas lastname
    ${response}=  Buscar reserva   243
    ${lastnamevalue}=  Get From Dictionary  ${response.json()}    lastname 
    Should Be Equal As Strings    ${lastnamevalue}    Allen