*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/testdata/Faculdade.robot

*** Variables ***
${faculdade}                F
${faculdadePosicao_x}       12
${faculdadePosicao_y}       34

*** Keywords ***

Informar Faculdade
    Log To Console          ${faculdade}
    Log To Console          ${faculdadePosicao_x}
    Log To Console          ${faculdadePosicao_y}
    Acessar o Sistema       ${faculdade}     ${faculdadePosicao_x}      ${faculdadePosicao_y}

Informar Nome
    Acessar o Sistema    Texeira         20      7

Informar na lista
    Acessar o Sistema    teta            20      7

Acionar Action
      Acessar o Sistema    A            21      11
      Send Enter

Acionar Action - B
    Acessar o Sistema    B           21      11
    Send Enter

Help
    Acessar o Sistema    ?           21      11