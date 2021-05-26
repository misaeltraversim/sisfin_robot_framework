*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/testdata/Faculdade.robot

*** Variables ***
${faculdade}    F
${posicao_x}    12
${posicao_y}    34

*** Keywords ***

Informar Faculdade
    #Selecionar Faculdade    ${faculdade}    ${posicao_x}   ${posicao_y}
    Acessar o Sistema    F         12      34

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