*** Settings ***  #Importar as bibliotecas
Library  RequestsLibrary
Library  Collections  #validar as collections do insomnia

*** Test Cases ***
Cenário 1: Consultar as reservas cadastradas firstname
    ${response}=  GET  https://restful-booker.herokuapp.com/booking/243  #Pegar os dados da reserva 27 e armazenar na variavel response
<<<<<<< HEAD:robot_tests/buscarreserva.robot
    #Validar os parametros de retorno no response
    ${firstnamevalue}=  Get From Dictionary  ${response.json()}    firstname 
    # O GET FROM DICTIONARY VAI PEGAR O VALOR DENTRO DA VARIAVEL QUE SE CHAMA firstname
        Should Be Equal As Strings    ${firstnamevalue}   Josh    #Compaara os 2 valores ->se o que esta armazenado dentro do campo firstname eh john

=======
    Set Test Variable    ${response}
        #Validar os parametros de retorno no response
    ${firstnamevalue}=  Get From Dictionary  ${response.json()}    firstname     # O GET FROM DICTIONARY VAI PEGAR O VALOR DENTRO DA VARIAVEL QUE SE CHAMA firstname
        Should Be Equal As Strings    ${firstnamevalue}   Josh    #Compaara os 2 valores ->se o que esta armazenado dentro do campo firstname eh john
Cenário 2: Consultar as reservas cadastradas lastname
    ${lastnamevalue}=  Get From Dictionary  ${response.json()}    lastname 
     Should Be Equal As Strings    ${lastnamevalue}    Allen    #Compaara os 2 valores ->se o que esta armazenado dentro do campo firstname eh Allen
>>>>>>> bc41871f0458d542212415367b3d0f9611fd09d9:buscarreserva.robot




