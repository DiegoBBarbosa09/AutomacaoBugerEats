*** Settings ***
Documentation                          Pagina Principal

Library                                SeleniumLibrary


*** Variables ***
${Browser}        Chrome
${Url}            https://buger-eats-qa.vercel.app/

*** Keywords ***
Acessar pagina principal Buger Eats e clicar em cadastrar
    Open Browser    url=${Url}    browser=${Browser}