*** Settings ***
Documentation                        Preenchimento de dados
Library                              SeleniumLibrary


*** Keywords ***
Preencher dados pessoais
    [Arguments]    ${nome}    ${cpf}    ${email}    ${Whatsapp}
    Input Text    css=input[name="fullName"]    ${nome}
    Input Text    css=input[name="cpf"]         ${cpf}
    Input Text    css=input[name="email"]       ${email}
    Input Text    css=input[name="whatsapp"]    ${Whatsapp}

Preencher Endereço
    [Arguments]    ${cep}    ${num}    ${compl}
    Input Text      css=input[name="postalcode"]         ${cep}
    Click Button    css=input[value="Buscar CEP"]
    Input Text      css=input[name="address-number"]     ${num}
    Input Text      css=input[name="address-details"]    ${compl}

Selecionar ${tipo_veiculo} para metodo de entrega
    Click Element    xpath=//ul[@class='delivery-method']//li//span[text()=${tipo_veiculo}]

Anexar cnh e finalizar cadastro
    Click Element        xpath=//p[text()='Foto da sua CNH']
    Choose File          cnh-digital    ${EXECDIR}/resources/elements/cnh-digital.jpg
    Click Button         css=button[class="button-success"]

Fechar Navegador
    Close Browser
    