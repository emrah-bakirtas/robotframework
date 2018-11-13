*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Click Login Link
    click element   css=#i_signin_link

Search a Movie
    [Arguments]  ${MOVIE_NAME}
    input text  css=#i_searchform .i_searchbox  ${MOVIE_NAME}
    press key  css=#i_searchform .i_searchbox   \\13

Log Out
    click element  css=#i_signout_link