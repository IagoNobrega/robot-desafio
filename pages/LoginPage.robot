*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BTN_LOGIN}        xpath=//a[@href='/login']
${INPUT_EMAIL}     id=user
${INPUT_SENHA}     id=password
${BTN_ENTRAR}      id=btnLogin
${MSG_LOGIN_OK}    id=swal2-title

*** Keywords ***
Acessar Tela de Login
    Wait Until Element Is Visible    ${BTN_LOGIN}    10s
    Click Element    ${BTN_LOGIN}

Preencher Email
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${INPUT_EMAIL}    10s
    Input Text    ${INPUT_EMAIL}    ${email}

Preencher Senha
    [Arguments]    ${senha}
    Input Text    ${INPUT_SENHA}    ${senha}

Clicar em Entrar
    Click Element    ${BTN_ENTRAR}

Validar Login com Sucesso
    Wait Until Element Is Visible    ${MSG_LOGIN_OK}    10s
    ${texto}=    Get Text    ${MSG_LOGIN_OK}
    Should Be Equal As Strings    ${texto}    Login realizado