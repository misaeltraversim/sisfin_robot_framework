*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/testdata/dao/Faculdade.robot

*** Variables ***

*** Keywords ***

Informar Faculdade
    #Selecionar Faculdade    ${sistema}    ${posicao_x}   ${posicao_y}
    Acessar o Sistema    F         12      34

Informar Nome
    Acessar o Sistema    Texeira         20      7

Informar na lista
    Acessar o Sistema    teta            20      7
