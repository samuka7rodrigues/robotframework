*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem


*** Variables ***
${URL}  https://restful-booker.herokuapp.com

*** Keywords ***
Step 1: Fazer uma request URL
    ${response}=    GET  https://restful-booker.herokuapp.com
Step 2: Fazer uma request por variavel
    ${response}=  GET   ${URL} 
  
*** Test Cases ***
Cenario 1: Fazer uma requisicao
    Step 1: Fazer uma request URL
    Step 2: Fazer uma request por variavel


