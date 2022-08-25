*** Settings ***
Resource    resources.robot

*** Keywords ***
OPEN WEBPAGE
    GO TO PAGE  ${BASE_URL}     ${CHROME_BROWSER}
    Wait For Condition                 return document.readyState=="complete"
    Wait Until Page Does Not Contain Element    ${LOADING PAGE}

CLOSE BROWSERS
     close all browsers

INPUT EMAIL
    [Arguments]    ${email}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT EMAIL PLACEHOLDER}  ${email}

INPUT PASSWORD
    [Arguments]    ${password}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT PASSWORD PLACEHOLDER}   ${password}

CHOOSE AUD CURRENCY
    WAIT AND CLICK    ${CHOOSE CURRENCY DROPDOWN}
    WAIT AND CLICK    ${CHOOSE AUD CURRENCY ITEM}

INPUT FIRST NAME
    [Arguments]    ${first name}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT FIRST NAME PLACEHOLDER}   ${first name}

INPUT LAST NAME
    [Arguments]    ${last name}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT LAST NAME PLACEHOLDER}   ${last name}

INPUT BIRTH DATE
    [Arguments]    ${birth date}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT DATE OF BIRTH PLACEHOLDER}   ${birth date}

INPUT BIRTH MONTH
    [Arguments]    ${birth month}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT MONTH OF BIRTH PLACEHOLDER}   ${birth month}

INPUT BIRTH YEAR
    [Arguments]    ${birth year}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT YEAR OF BIRTH PLACEHOLDER}   ${birth year}

INPUT PHONE NUMBER
    [Arguments]    ${phone number}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT MOBILE NUMBER PLACEHOLDER}   ${phone number}

INPUT CITY
    [Arguments]    ${city}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT CITY PLACEHOLDER}   ${city}

INPUT ADDRESS
    [Arguments]    ${address}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT ADDRESS PLACEHOLDER}   ${address}

INPUT POSTAL CODE
    [Arguments]    ${postal code}
    INPUT TEXT INTO PLACEHOLDER     ${INPUT POSTAL CODE PLACEHOLDER}   ${postal code}

CHECK CHECKBOXES FOR EMAIL SMS AND OVER 18
    Wait Until Element Is Enabled    ${CHECKBOXES}
    ${checkbox webelements}     Get Webelements    ${CHECKBOXES}
    FOR   ${element}     IN     @{checkbox webelements}
        WAIT AND CLICK      ${element}
    END
    WAIT AND CLICK    ${INPUT POSTAL CODE PLACEHOLDER}

CHECK FOR ERRORS
    Wait Until Page Contains Element   ${ERROR MESSAGE}
    Wait Until Page Does Not Contain   ${ERROR MESSAGE}

VERIFY SIGN UP BUTTON
    Page Should Contain Element    ${VERIFY SIGN UP BUTTON}
