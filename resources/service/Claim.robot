*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/ClaimData.robot

*** Variables ***
${claim}                  Claim
${claim_x}                24
${claim_y}                2


*** Keywords ***
Informar Claim
   Acessar Claim                  ${claim}              ${claim_x}            ${claim_y}
