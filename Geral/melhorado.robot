*** Settings ***
Library    RequestsLibrary
Resource    teste.robot

*** Keywords ***
Step 1: Fazer uma request URL
    ${response}=  GET  https://restful-booker.herokuapp.com/booking
    Set Task Variable    ${response}
Step 2: Verificar se o get foi executado com sucesso
    Should Be True    ${response.ok}
Step 3: Verificar se o get retorna 200
    Should Be Equal As Strings    ${response.status_code}    200

*** Test Cases ***
Cenário 1: Validacao do fluxo até o codigo sucesso
    Step 1: Fazer uma request URL
    Step 2: Verificar se o get foi executado com sucesso
    Step 3: Verificar se o get retorna 200