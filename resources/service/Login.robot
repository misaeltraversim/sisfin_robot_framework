*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/LoginData.robot


*** Variables ***
${nomeLoginIncorreto}                         teste2
${posicaoLogin_x}                             24
${posicaoLogin_y}                             2
${mensagenLoginInvalido}                      APPLICATION REJECTED LOGON



*** Keywords ***
PreencherLoginIncorreto
    Digitar login incorreto    ${nomeLoginIncorreto}     ${posicaoLogin_x}     ${posicaoLogin_y}
    Verificar se existe        ${mensagenLoginInvalido}
    Capturar Screenshot
