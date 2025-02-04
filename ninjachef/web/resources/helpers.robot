***Settings***
Documentation           Aqui teremos palavras chave de apoio

***Keywords***
Login Session 
    [Arguments]     ${email}      

    base.Open Session

    Go To       ${base_url}

    Input Text      ${CAMPO_EMAIL}    ${email}
    Click Element   ${BOTAO_ENTRAR}

    Wait Until Page Contains Element    ${DIV_DASHBOARD}
    
Get Api Token
    [Arguments]     ${email_parametro}

    &{headers}=         Create Dictionary       Content-Type=application/json
    &{payload}=         Create Dictionary       email=${email_parametro}

    Create Session      api         ${api_url}
    
    ${resp}=            Post Request    api       /sessions      data=${payload}      headers=${headers}
    Status Should Be    200            ${resp}

    ${token}     Convert To String      ${resp.json()['_id']}
    [Return]       ${token}
