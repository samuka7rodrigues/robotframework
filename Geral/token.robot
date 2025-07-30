*** Settings ***
Library  RequestsLibrary
Library   Collections

*** Variables ***
${BaseURl} =   https://restful-booker.herokuapp.com


*** Keywords ***
Step 1: Criar um token com os parametros (DICTIONARY)
    ${data}=    Create Dictionary    username=admin  password=password123
    Set Global Variable    ${data}
Step 2: Fazer a chamada, o response vai receber o resultado do request
    ${response}=  POST    ${BaseURl}/auth    json=${data}
    Set Global Variable    ${response}
    Should Be True    ${response.ok}
    Should Be Equal As Numbers    ${response.status_code}    200
Step 3: Pegar a informacao da resposta
    ${data_resp}=     Set Variable    ${response.json()}
    Log Dictionary    ${data_resp}
    Set Global Variable    ${data_resp}

Step 4: Printar a informacao do token e validar
    ${token} =     Get From Dictionary    ${data_resp}    token  #Armazena a informacao do token na variavel
    Log  seu token é: ${token}
    
*** Test Cases ***
Plano de testes
    Step 1: Criar um token com os parametros (DICTIONARY)
    Step 2: Fazer a chamada, o response vai receber o resultado do request
    Step 3: Pegar a informacao da resposta
    Step 4: Printar as informacao do token e validar

    