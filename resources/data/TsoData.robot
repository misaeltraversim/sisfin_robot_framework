*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***
${PF1}            PF(1)
${PF3}            PF(3)
${PF7}            PF(7)
${PF8}            PF(8)

*** Keywords ***
Acessar o TSO
    [Arguments]          ${tso}   ${x7}   ${y7}
    Digitar Na Posicao   ${tso}   ${x7}   ${y7}
    Transmitir


Informar Usuário
    [Arguments]          ${tso1}   ${x8}   ${y8}
    Digitar Na Posicao   ${tso1}   ${x8}   ${y8}
    Transmitir

Informar Senha
    [Arguments]          ${tso2}   ${x9}   ${y9}
    Digitar Na Posicao   ${tso2}   ${x9}   ${y9}
    Tabular

Informar Procedimento
    [Arguments]          ${tso3}   ${x10}   ${y10}
    Digitar Na Posicao   ${tso3}   ${x10}   ${y10}
    Tabular

Informar Número da Conta
    [Arguments]          ${tso4}   ${x11}   ${y11}
    Digitar Na Posicao   ${tso4}   ${x11}   ${y11}
    Tabular

Informar Tamanho
    [Arguments]          ${tso5}   ${x12}   ${y12}
    Digitar Na Posicao   ${tso5}   ${x12}   ${y12}
    Tabular

Informar Executar
    [Arguments]          ${tso6}   ${x13}   ${y13}
    Digitar Na Posicao   ${tso6}   ${x13}   ${y13}
    Tabular

Informar Comando
    [Arguments]          ${tso7}   ${x14}   ${y14}
    Digitar Na Posicao   ${tso7}   ${x14}   ${y14}
    Tabular

# Colocar na classe Mainframe
Executar Comando PF1
    Execute Command   ${PF1}
    Transmitir
    Transmitir

# Colocar na classe Mainframe
Executar Comando PF3
    Execute Command   ${PF3}
    Capturar Screenshot

# Colocar na classe Mainframe
Executar Comando PF7
    Execute Command   ${PF7}
    Capturar Screenshot
    
# Colocar na classe Mainframe
Executar Comando PF8
   Execute Command   ${PF8}
   Capturar Screenshot
