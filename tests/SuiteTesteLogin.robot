*** Settings ***
Resource         ${EXECDIR}/resources/commons/Base.robot
Resource         ${EXECDIR}/resources/service/Login.robot



Suite Setup     Conectar Emulador 2
Suite Teardown  Terminar Suite


*** Test Cases ***
CT001 - Login incorreto
    #[Documentation] Este caso de teste tem como objetivo validar o comportamento da tentativa entrar no sistema com um login inválido
    #[Tags]           Exceção
    PreencherLoginIncorreto
