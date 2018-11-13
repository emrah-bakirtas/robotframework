*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Click on Movie Image
    @{ELEMENTS} =   get webelements  css=.sr_result_img
    click element   ${ELEMENTS[0]}