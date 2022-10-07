*** Settings ***
Documentation         Preencher Formulario
Resource              ${EXECDIR}/resources/main.resource
Resource              ${EXECDIR}/resources/pages/preencher.resource



*** Test Cases ***
Caso de Teste 01: Cadastrar Usuario com Moto
    Acessar pagina principal Buger Eats e clicar em cadastrar
    Preencher dados pessoais    Rafael Almeida    00000114151    rafaalmeida@gmail.com    11955755575
    Preencher Endereço          06462000    341    casa 3
    Selecionar "Moto" para metodo de entrega
    Anexar cnh e finalizar cadastro
    Fechar Navegador
    
 

