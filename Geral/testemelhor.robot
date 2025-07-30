*** Settings ***
Library  RequestsLibrary
*** Keywords ***  #É usado como steps
Step 1:Fazer a Request GET
    ${response}=  GET  https://restful-booker.herokuapp.com/booking/
    Log  ${response.text}
    Set Test Variable    ${response}
    #Os Steps não podem ter mais que 1 espaco
Step 2: Verificar se o get foi realizado com sucesso 
...    Should Be True    ${response.ok}

Step 3: Verificar se o status code é igual a 200
    Should Be Equal As Strings    ${response.status_code}    200

*** Test Cases ***
Cenario 1: Valicao do get melhorado
        Step 1:Fazer a Request GET
        Step 2:Verificar se o get foi realizado com sucesso
        Step 3:Verificar se o status code é igual a 200