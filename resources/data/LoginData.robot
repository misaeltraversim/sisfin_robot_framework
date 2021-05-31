*** Settings ***
Resource          ${EXECDIR}/resources/commons/Mainframe.robot


*** Variables ***


*** Keywords ***
Digitar login incorreto
      [Arguments]          ${teste}   ${x}   ${y}
      Digitar Na Posicao   ${teste}   ${x}   ${y}
      Transmitir
