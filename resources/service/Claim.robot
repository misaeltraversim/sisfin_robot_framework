*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/ClaimData.robot

*** Variables ***
${claim}                  Claim
${claim_x}                24
${claim_y}                2
${id}                     12345
${id_x}                   17
${Id_y}                   56

*** Keywords ***
Informar Claim
   Acessar Claim                  ${claim}              ${claim_x}            ${claim_y}

Informar ID Claim
    Informar ID                  ${id}                 ${id_x}                ${Id_y}
    Verificar se existe          Invalid UIN, program expects nine numeric digits.
