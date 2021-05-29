*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/SistemaData.robot

*** Variables ***
${sistema}      phonbook
${posicao_x}    24
${posicao_y}    2

*** Keywords ***
Informar Sistema
    Verificar se existe     enter application or EXIT 
    Acessar o Sistema       ${sistema}   ${posicao_x}   ${posicao_y}
