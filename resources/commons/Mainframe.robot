*** Settings ***
Variables        properties.py
Library          Mainframe3270
#Library          ${EXECDIR}/testresources/utils/utils
#Library          ${EXECDIR}/testresources/utils/utilsMask


*** Variable ***
${MAINFRAME}      teague-tammvs1.tamu.edu  port= 992
${END}            END
${LIMPAR}         Clear
${PF1}            PF(1)
${PF3}            PF(3)
${PF7}            PF(7)
${PF8}            PF(8)

*** Keywords ***
Abrir Terminal
    Capturar Screenshot
    Open Connection    teague-tammvs1.tamu.edu  port= 992
    Sleep    8
    Capturar Screenshot

Fechar Terminal
    Close Connection

Transmitir
   Capturar Screenshot
   Send Enter
   Capturar Screenshot

Capturar Screenshot
    Take Screenshot

Digitar
   [Arguments]   ${conteudo}
   Write Bare  ${conteudo}

Digitar Na Posicao
    [Arguments]              ${text}  ${y}  ${x}
    Limpar campo             ${y}      ${x}
    Write Bare In Position   ${text}  ${y}  ${x}

Digitar Na Posicao Por Lista
    [Arguments]   ${params}
    #String , posicao Y , posição X
    Write Bare In Position  ${params}[0][0]  ${params}[0][1]  ${params}[0][2]

Tabular
   Execute Command  Tab

Limpar campo
    [Arguments]     ${x}  ${y}
    Delete Field    ${x}  ${y}

Limpar Campo Por Lista
    [Arguments]     ${params}
    Delete Field    ${params}[0][0]  ${params}[0][1]

Tabular "${qnt}" Vezes
    Change Wait Time    0.01
    :FOR    ${i}    IN RANGE    ${qnt}
    \    Tabular
    Change Wait Time    0.2

Verificar se existe
   [Arguments]   ${conteudo}
   Page Should Contain String  ${conteudo}

Validar Informacoes Tela
    [Arguments]         ${campos}
    Page Should Contain All Strings     ${campos}

Ler Dado Tela 2
    [Arguments]        ${y}  ${x}  ${l}
    ${valorCampo} =    Read  ${y}  ${x}  ${l}
    [Return]           ${valorCampo}

Ler Dado Tela Array Simples
    [Arguments]        @{params}
    ${valorCampo} =     Read  ${params}[0]  ${params}[1]  ${params}[2]
    [Return]           ${valorCampo}

Comparar Valores na Tela
    [Arguments]     ${dadoTela}   ${dadoBanco}
    ${saoIguais} =  Compara Valores  ${dadoTela}  ${dadoBanco}
    Run keyword if   '${saoIguais}'=='False'  FAIL

Validar Informacoes Tela Dinamicamente
    [Arguments]    @{input}
    ${cnt}=    Get length    ${input}
    :FOR    ${i}    IN RANGE    ${cnt}
    \    Page Should Contain String     ${input}[${i}]

Validar Mensagem
    [Arguments]                  ${msgValidacao}
    Page Should Contain String   ${msgValidacao}

Validar Mensagem Generica
    [Arguments]                      ${msgValidacao}
    Page Should Contain Any String   ${msgValidacao}

Alterar Campo
    [Arguments]   @{params}
    Digitar Na Posicao Por Lista   ${params}
    Transmitir

Apagar Conteudo Campo Ocorrencia
    Tabular "1" Vezes
    Execute Command  ${END}
    Tabular "1" Vezes
    Execute Command  ${END}

Executar PF1
    Execute Command   ${PF1}
    Capturar Screenshot

Executar PF3
    Execute Command   ${PF3}
    Capturar Screenshot

Executar PF7
    Execute Command   ${PF7}
    Capturar Screenshot

Executar PF8
    Execute Command   ${PF8}
    Capturar Screenshot
