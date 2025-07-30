*** Settings ***
Library  RequestsLibrary
Library  Collections
Library    OperatingSystem

*** Variables ***
${BaseURl}     https://restful-booker.herokuapp.com/booking

*** Keywords ***

Step1 : Incluir as informacoes no create Dictionary, no json tem 2 Dictionary
    ${bookingdates}=  Create Dictionary  checkin=2018-01-01  checkout=2019-01-01        
    ${data}=  Create Dictionary  firstname=Samuel  lastname=Rodrigues  totalprice=250  depositpaid=true  bookingdates=${bookingdates}  additionalneeds=Breakfast    
    Log  ${data}  #so loga as informacoes da reserva
    Set Global Variable    ${data}
Step2: Validacoes informacoes na requisicao
    ${response}=  POST  ${BaseURl}  json=${data}  #cria variavel e executa o metodo post na chamada da variavel no formato json data
    Set Global Variable    ${response}
    Log    ${response.text}
    Log    ${response.status_code}
    Log    ${response.reason}
    Log    ${response.headers}
Step 3: Valida os dados com os comandos Should
        Should Be Equal As Numbers    ${response.status_code}    200
        Should Be True    ${response.ok}  ok   

Step 4: criar uma variavel e armazenar o response do tipo json na variavel
    ${booking}=  Set Variable    ${response.json()}   #criar uma variavel e armazenar o response do tipo json na variavel
    Log Dictionary    ${booking}  #imprimir as informacoes da variavel
    Set Global Variable    ${booking}

Step 5: Fazer as validacoes sobre o resultado
     ${booking_info}=  Get From Dictionary  ${booking}   booking  #A Var armazena o json e percorrer as validacoes
     Should Be Equal As Strings    ${booking_info['firstname']}   Samuel
     Should Be Equal As Strings    ${booking_info['lastname']}    Rodrigues
   

    
*** Test Cases ***

Montar o plano de testes
    Step1 : Incluir as informacoes no create Dictionary, no json tem 2 Dictionary
    Step2: Validacoes informacoes na requisicao
    Step 3: Valida os dados com os comandos Should
    Step 4: criar uma variavel e armazenar o response do tipo json na variavel
    Step 5: Fazer as validacoes sobre o resultado

 

   