*** Settings ***
Library  Selenium2Library
Resource  ${EXECDIR}/../variables/Variables.robot

*** Variables ***
${APP_URL}  https://www.criticker.com/
${BROWSER}  chrome
${TRUE}     TRUE
${FALSE}    FALSE

*** Keywords ***
Launch Browser
    Open Browser  ${APP_URL}  ${BROWSER}
    maximize browser window

Is Element Exist
    [Arguments]  ${LOCATOR}
    @{ELEMENTS} =   get webelements  ${LOCATOR}
    ${ELEMENT_COUNT} =  get length  ${ELEMENTS}
    return from keyword if  ${ELEMENT_COUNT} > 0     ${TRUE}
    return from keyword   ${FALSE}
