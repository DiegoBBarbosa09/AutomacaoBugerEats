*** Settings ***
Documentation                          Pagina Principal

Library                                Browser

Resource                               pages/preencher.resource


*** Keywords ***
Clicar para se Cadastrar
    New Page                https://buger-eats-qa.vercel.app/
    Click                   xpath=//a[@href='/deliver'] >> text=Cadastre-se para fazer entregas

Iniciar Teste
    New Browser             headless=False

Finalizar Teste
    Take Screenshot
