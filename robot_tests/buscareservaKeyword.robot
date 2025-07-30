*** Settings ***  #Importar as bibliotecas
Library  RequestsLibrary
Library  Collections  #validar as collections do insomnia

*** Keywords ***
Buscar reserva por arguments

    [Arguments]    ${booking_number}
    ${response}   GET      https://restful-booker.herokuapp.com/booking/${booking_number}
    [Return]       ${response}

*** Test Cases ***
Cenário 1: Consultar as reservas cadastradas firstname
    ${response}=  Buscar reserva por arguments  222
    ${firstnamevalue}=  Get From Dictionary  ${response.json()}    firstname     
    Should Be Equal As Strings    ${firstnamevalue}   John   
     

Cenário 2: Consultar as reservas cadastradas lastname
    ${response}=  Buscar reserva por arguments  222
    ${lastnamevalue}=  Get From Dictionary  ${response.json()}    lastname 
    Should Be Equal As Strings    ${lastnamevalue}    Smith
    