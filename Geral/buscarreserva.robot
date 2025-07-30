*** Settings ***  #Importar as bibliotecas
Library  RequestsLibrary
Library  Collections  #validar as collections do insomnia

*** Test Cases ***
Cenário 1: Consultar as reservas cadastradas por ID
    ${response}=  GET  https://restful-booker.herokuapp.com/booking/243  #Pegar os dados da reserva 27 e armazenar na variavel response
    #Validar os parametros de retorno no response
    ${firstnamevalue}=  Get From Dictionary  ${response.json()}    firstname 
    # O GET FROM DICTIONARY VAI PEGAR O VALOR DENTRO DA VARIAVEL QUE SE CHAMA firstname
        Should Be Equal As Strings    ${firstnamevalue}    Joao    #Compaara os 2 valores ->se o que esta armazenado dentro do campo firstname eh john





