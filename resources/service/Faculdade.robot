*** Settings ***
Resource        ${EXECDIR}/resources/commons/Mainframe.robot
Resource        ${EXECDIR}/resources/data/FaculdadeData.robot

*** Variables ***
${faculdade}                F
${faculdadePosicao_x}       12
${faculdadePosicao_y}       34
${sobrenome}                Texeira
${sobrenomePosicao_x}       20
${sobrenomePosicao_y}       7
${sobrenome1}               Thaden
${sobrenomePosicao_x1}      20
${sobrenomePosicao_y1}      7
${Action}                   A
${ActionePosicao_x}         21
${ActionPosicao_Y}          11
${Action2}                  B
${ActionPosicao_x1}         21
${ActionPosicao_Y1}         11
${Help}                     ?
${HelpPosicao_x}            21
${helpPosicao_Y}            11

*** Keywords ***

Informar Faculdade
    Log To Console             ${faculdade}
    Log To Console             ${faculdadePosicao_x}
    Log To Console             ${faculdadePosicao_y}
    Digitar Faculdade          ${faculdade}     ${faculdadePosicao_x}      ${faculdadePosicao_y}
    Verificar se existe        Faculty

Informar Sobrenome
    Digitar Sobrenome          ${sobrenome}     ${sobrenomePosicao_x}      ${sobrenomePosicao_y}
    Verificar se existe        Search for Last Name Starting with

Informar Sobrenome2
    Digitar Sobrenome2         ${sobrenome1}    ${sobrenomePosicao_x1}      ${sobrenomePosicao_y1}

Informar Action
      Digitar Action           ${Action}        ${ActionePosicao_x}         ${ActionPosicao_Y}

Informar Action - B
    Digitar Action - B         ${Action2}       ${ActionPosicao_x1}          ${ActionPosicao_Y1}

Help
    Digitar Help               ${Help}          ${HelpPosicao_x}             ${helpPosicao_Y}
    Verificar se existe        ? = Will give further explanations on the use of the field.
