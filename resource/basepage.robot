*** Settings ***
Resource    resources.robot

*** Keywords ***
WAIT AND CLICK
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}
    Scroll Element Into View    ${element}
    Click Element   ${element}

INPUT TEXT INTO PLACEHOLDER
    [Arguments]    ${placeholder}   ${text}
    Wait Until Element Is Enabled   ${placeholder}
    Input Text    ${placeholder}    ${text}

GO TO PAGE
    [Arguments]     ${url}      ${browser}
    Open Browser    ${url}      ${browser}
    maximize browser window
