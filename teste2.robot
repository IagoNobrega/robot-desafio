*** Settings ***
Library    SeleniumLibrary
Test Teardown    Tirar Screenshot em Caso de Falha

*** Variables ***
${SITE_URL}           https://automationpratice.com.br/
${SITE_URL_IAGON}     https://www.google.com/
${USUARIO_EMAIL}      iagon@outlook.com
${USUARIO_SENHA}      123456
${BROWSER}            chrome

*** Keywords ***
Tirar Screenshot em Caso de Falha
    Run Keyword If Test Failed    Screenshot com Nome do Cenário

Screenshot com Nome do Cenário
    ${nome_teste}=    Replace String    ${TEST NAME}    ${SPACE}    _
    Capture Page Screenshot    filename=${nome_teste}.png

Abrir Site Iagon
    Open Browser    ${SITE_URL_IAGON}    ${BROWSER}
    Maximize Browser Window

Abrir Site
    Open Browser    ${SITE_URL}    ${BROWSER}
    Maximize Browser Window

Abrir esse Site
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window

Clicar sobre o botão login
    Wait Until Element Is Visible    xpath=//a[@href='/login']    10s
    Click Element    xpath=//a[@href='/login']

Digitar email
    Wait Until Element Is Visible    id=user    10s
    Input Text    id=user    ${USUARIO_EMAIL}

Digitar senha
    Input Text    id=password    ${USUARIO_SENHA}

Clicar em logar
    Click Element    id=btnLogin

Verificar texto login realizado
    Wait Until Element Is Visible    id=swal2-title    10s
    ${texto_atual}=    Get Text    id=swal2-title
    Should Be Equal As Strings    ${texto_atual}    Login realizado

Fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Acessando o site do Robot
    [Tags]    Teste1
    Abrir Site Iagon
    Fechar navegador

Cenário 2: Testando o Robot
    [Tags]    Teste2
    Abrir Site
    Clicar sobre o botão login
    Digitar email
    Digitar senha
    Clicar em logar
    Verificar texto login realizado
    Fechar navegador

Cenário 3: Testando valor no teste
    [Tags]    Teste3
    Abrir esse Site    https://automationpratice.com.br/
    Clicar sobre o botão login
    Digitar email
    Digitar senha
    Clicar em logar
    Verificar texto login realizado
    Fechar navegador