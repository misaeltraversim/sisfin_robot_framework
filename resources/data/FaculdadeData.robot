*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot

*** Variables ***

*** Keywords ***
Digitar Faculdade
    [Arguments]          ${dado1}   ${x1}   ${y1}
    Digitar Na Posicao   ${dado1}   ${x1}   ${y1}
    Transmitir

Digitar Sobrenome
    [Arguments]          ${dado2}   ${x2}   ${y2}
    Digitar Na Posicao   ${dado2}   ${x2}   ${y2}
    Transmitir

Digitar Sobrenome2
    [Arguments]          ${dado3}   ${x3}   ${y3}
    Digitar Na Posicao   ${dado3}   ${x3}   ${y3}
    Transmitir

Digitar Action
    [Arguments]          ${dado4}   ${x4}   ${y4}
    Digitar Na Posicao   ${dado4}   ${x4}   ${y4}
    Transmitir
    Send Enter

Digitar Action - B
    [Arguments]          ${dado5}   ${x5}   ${y5}
    Digitar Na Posicao   ${dado5}   ${x5}   ${y5}
    Transmitir

Digitar Help
    [Arguments]          ${dado6}   ${x6}   ${y6}
    Digitar Na Posicao   ${dado6}   ${x6}   ${y6}
    Transmitir
