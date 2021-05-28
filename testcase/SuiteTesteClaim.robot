*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Claim.robot



<<<<<<< HEAD
Suite Setup     Conectar Emulador 3
=======
Suite Setup     Conectar Emulador 2
>>>>>>> 2e3a278c7894a9805dda2d07cb05ba2010bbdcc3
Suite Teardown  Terminar Suite


*** Test Cases ***
CT001 - Selecionar Claim
    [Documentation]  Este caso de teste tem como objetivo acessar o claim.
    [Tags]           Fluxo Alternativo
    Informar Claim
