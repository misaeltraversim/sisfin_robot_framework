*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/testdata/LoginDAO.robot

*** Variables ***
${sistema}      phonbook
${posicao_x}    24
${posicao_y}    2

*** Keywords ***
Logar No Terminal
    #Abrir Terminal
    #Sleep  3
    Acessar o Sistema   ${sistema}   ${posicao_x}   ${posicao_y}
