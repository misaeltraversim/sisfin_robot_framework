*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/testdata/dao/Faculdade.robot

***Variables***
${sistema}      F
${posicao_x}    12
${posicao_y}    34

***Keywords***

Informar Faculdade
    #Selecionar Faculdade    ${sistema}    ${posicao_x}   ${posicao_y}
    Acessar o Sistema    F         12      34

Informar Nome
    Acessar o Sistema    Texeira         20      7

Informar na lista
    Acessar o Sistema    teta            20      7
