*** Settings ***
Library  Selenium2Library

*** Variables ***
${LOGIN_NAME}   test-user
${LOGIN_PASS}   TA12345

*** Keywords ***
Login to App
    input Text  css=#si_input_uname  ${LOGIN_NAME}
    input Text  css=#si_input_pswd  ${LOGIN_PASS}
    click element   css=#si_submit