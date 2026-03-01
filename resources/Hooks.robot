*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Screenshot em Falha com Nome do Cenário
    Run Keyword If Test Failed    Tirar Screenshot

Tirar Screenshot
    ${nome}=    Replace String    ${TEST NAME}    ${SPACE}    _
    Capture Page Screenshot    filename=${nome}.png