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
${password_x}                 8
${password_y}                20
${mensagemUser}              USERID UNKNOWN TO RACF


*** Keywords ***
InformarWylbur
    Acessar o Wylbur                ${wylbur}       ${wylbur_x}     ${wylbut_y}

InformarUserId
    Informar o userIdWy             ${useridWy}     ${userid_x}     ${userido_y}

InformarPasswordId
    Informar o passwordWy           ${password}     ${password_x}   ${password_y}
<<<<<<< HEAD

VerificarMensagemDaTela
=======
>>>>>>> 2e3a278c7894a9805dda2d07cb05ba2010bbdcc3
    Verificar se existe             ${mensagemUser}
    Log To Console                  ${mensagemUser}
