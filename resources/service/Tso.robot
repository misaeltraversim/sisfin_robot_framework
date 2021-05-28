*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/TsoData.robot

*** Variables ***
${tso}                  tso
${tso_x}                24
${tso_y}                2
${userid}               teste
${userid_x}             2
${userido_y}            1
${password}             Teste10
${password_x}           8
${password_y}           20
${procedure}            Cadastro
${procedure_x}          10
${procedure_y}          20
${AcctNmbr}             1234567890
${AcctNmbr_x}           12
${AcctNmbr_y}           20
${Size}                 30
${Size_x}               14
${Size_y}               20
${Perform}              1
${Perform_x}            16
${Perform_y}            20
${command}              1
${command_x}            18
${command_y}            20


*** Keywords ***
Informar TSO
    Acessar o TSO                         ${tso}              ${tso_x}            ${tso_y}

Informar Usuário no TSO
    Informar Usuário                      ${userid}           ${userid_x}         ${userido_y}

Informar Senha no TSO
    Informar Senha                        ${password}         ${password_x}       ${password_y}

Informar Procedimento no TSO
    Log To Console                        ${procedure}
    Log To Console                        ${procedure_x}
    Log To Console                        ${procedure_y}
    Informar Procedimento                 ${procedure}        ${procedure_x}       ${procedure_y}

Informar Número da Conta no TSO
    Informar Número da Conta              ${AcctNmbr}         ${AcctNmbr_x}        ${AcctNmbr_y}

Informar Tamanho no TSO
    Informar Tamanho                      ${Size}             ${Size_x}            ${Size_y}

Informar Executar no TSO
    Informar Executar                     ${Perform}          ${Perform_x}         ${Perform_y}

Informar Comando no TSO
    Informar Comando                      ${command}          ${command_x}         ${command_y}

Help TSO
    Executar Comando PF1
    Verificar se existe                   HELP 
    Executar Comando PF7
    Executar Comando PF3
