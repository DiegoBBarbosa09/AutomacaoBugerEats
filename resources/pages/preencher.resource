*** Settings ***
Documentation                        Preenchimento de dados

Library                              Browser


*** Keywords ***
Preencher Dados Pessoais
    [Arguments]              ${nome}    ${cpf}    ${email}     ${whatsapp}
    Fill Text                css=input[name=fullName]          ${nome}
    Fill Text                css=input[name=cpf]               ${cpf}
    Fill Text                css=input[name=email]             ${email}
    Fill Text                css=input[name=whatsapp]          ${whatsapp}

Preencher Endereço
    [Arguments]             ${cep}    ${num}    ${Comp}
    Fill Text               css=input[name=postalcode]         ${cep}
    Click                   xpath=//input[@value='Buscar CEP']
    Sleep                   2
    Fill Text               css=input[name=address-number]     ${num}
    Fill Text               css=input[name=address-details]    ${Comp}    

Selecionar Metodo
    [Arguments]              ${tipo_veiculo}
    Scroll By                vertical=500
    Click                    xpath=//li[@class]//span[text()='${tipo_veiculo}']

Enviar Arquivo
    ${arquivo}=              Promise To Upload File                      ${EXECDIR}\\resources/elements/cnh-digital.jpg
    Click                    xpath=//p[text()='Foto da sua CNH']
    ${upload_result}=        Wait For    ${arquivo}
    Scroll By                vertical=250
    Sleep                    2

Finalizar Cadastro
    Click                    xpath=//button[@class='button-success']  

Validar Mensagem        
    ${mensagem}=             Set Variable    Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.
    Should Be Equal          //div[@id='swal2-html-container']    ${mensagem}

    