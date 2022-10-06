*** Settings ***
Documentation         Preencher Formulario

Resource              ${EXECDIR}/resources/main.resource

Test Setup            Iniciar Teste
Test Teardown         Finalizar Teste


*** Test Cases ***
Cadastrar Usuario com Moto
    Clicar para se Cadastrar
    Preencher Dados Pessoais    Anderson    653.978.390-60    anderson@gmail.com    1198999999
    Preencher Endereço          06462000    341    casa 3
    Selecionar Metodo           Moto
    Enviar arquivo
    Finalizar Cadastro
    Validar Mensagem
   
    
 

