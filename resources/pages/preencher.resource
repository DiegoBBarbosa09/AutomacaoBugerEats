*** Settings ***
Documentation                        Preenchimento de dados
Library                              SeleniumLibrary


*** Keywords ***
Preencher dados pessoais
    [Arguments]    ${nome}    ${cpf}    ${email}    ${Whatsapp}
    Input Text    input[name="fullName"]    ${nome}
    Input Text    input[name="cpf"]         ${cpf}
    Input Text    input[name="email"]       ${email}
    Input Text    input[name="whatsapp"]    ${Whatsapp}
