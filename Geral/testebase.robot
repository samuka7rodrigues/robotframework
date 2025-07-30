***Settings***  #sempre usar o settings para importar a biblioteca
Library  RequestsLibrary

*** Test Cases ***
Consultar as reservas cadastradas
#criar uma variavel para receber o response
    ${response}=  GET  https://restful-booker.herokuapp.com/booking/
# O retorno será impresso, para isso vamos executar o comando log, isto vai dar um norte do que esta ocorrendo,
    Log    ${response.text} 
#Até agora foi apenas enviando o comando get para buscar as reservas cadastradas, mas para fazer uma validação se deu ok ou nao
#necessitamos executar o comando 
    Should Be True   ${response.ok}  
#valida se o response esta ok
    Should Be Equal As Strings    ${response.status_code}  200