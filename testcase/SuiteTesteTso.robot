*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Tso.robot

Suite Setup     Conectar Emulador 2
Suite Teardown  Terminar Suite


*** Test Cases ***
#CT001 - TSO
#    [Documentation]  Este caso de teste tem como objetivo validar o acesso ao TSO.
#    [Tags]           Fluxo Principal
#    Informar TSO
#    Informar Usuário no TSO
#    Informar Senha no TSO
#    Informar Procedimento no TSO
#    Informar Número da Conta no TSO
#    Informar Tamanho no TSO
#    Informar Executar no TSO
#    Informar Comando no TSO

#CT002 - TSO Help
#    [Documentation]  Este caso de teste tem como objetivo validar o Help do TSO.
#    [Tags]           Fluxo Principal
#    Help TSO
