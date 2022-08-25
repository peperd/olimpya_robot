*** Settings ***
Library    SeleniumLibrary      20s
Library    FakerLibrary
Library    DependencyLibrary
Library    String

Resource    keywords.robot
Resource    selectors.robot
Resource    basepage.robot

*** Variables ***
${BASE_URL}         https://www.olympia.casino
${CHROME_BROWSER}   chrome