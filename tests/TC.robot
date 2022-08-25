*** Settings ***
Resource    ../resource/resources.robot

Suite Setup     OPEN WEBPAGE
Suite Teardown  CLOSE BROWSERS

*** Test Cases ***
1. Open webpage click on sign up modal and fill in first modal window
    ${email}=       FakerLibrary.email
    ${password}=    Generate Random String      10   [NUMBERS][LETTERS]
    WAIT AND CLICK  ${SIGN UP BUTTON}
    INPUT EMAIL     ${email}
    INPUT PASSWORD  ${password}
    CHOOSE AUD CURRENCY
    WAIT AND CLICK    ${NEXT BUTTON}

2. Fill in second modal window
    Depends On Test    1. Open webpage click on sign up modal and fill in first modal window
    ${first name}=      FakerLibrary.first_name
    ${last name}=       FakerLibrary.last_name
    ${birth date}=      Evaluate    random.sample(range(1, 30), 1)   random
    ${birth month}=     Evaluate   random.sample(range(1, 12), 1)   random
    ${birth year}=      Evaluate  random.sample(range(1960, 2000), 1)   random
    ${phone number}=    Generate Random String   7   123456789
    INPUT FIRST NAME    ${first name}
    INPUT LAST NAME     ${last name}
    INPUT BIRTH DATE    ${birth date}
    INPUT BIRTH MONTH   ${birth month}
    INPUT BIRTH YEAR    ${birth year}
    INPUT PHONE NUMBER  ${phone number}
    WAIT AND CLICK      ${NEXT BUTTON}

3. Fill in third modal window and verify
    Depends On Test     2. Fill in second modal window
    ${city}=    FakerLibrary.city
    ${address}=     FakerLibrary.address
    ${postal code}=     FakerLibrary.zipcode
    INPUT CITY      ${city}
    INPUT ADDRESS   ${address}
    INPUT POSTAL CODE   ${postal code}
    CHECK CHECKBOXES FOR EMAIL SMS AND OVER 18
    CHECK FOR ERRORS
    VERIFY SIGN UP BUTTON
