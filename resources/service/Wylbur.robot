*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/WylburData.robot

*** Variables ***
${wylbur}                  Wylbur
${wylbur_x}                   24
${wylbut_y}                   2
${useridWy}                teste
${userid_x}                   6
${userido_y}                  12
${password}                Teste10
${password_x1}                 7
${password_y1}                13
${mensagemUser}              USERID UNKNOWN TO RACF


*** Keywords ***
InformarWylbur
    Acessar o Wylbur                ${wylbur}       ${wylbur_x}     ${wylbut_y}

InformarUserId
    Informar o userIdWy             ${useridWy}     ${userid_x}     ${userido_y}

InformarPasswordId
    Informar o passwordWy           ${password}     ${password_x1}   ${password_y1}
    Verificar se existe             ${mensagemUser}
