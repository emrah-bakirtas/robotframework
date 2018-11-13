*** Settings ***
Resource    ${EXECDIR}/../keywords/Resources.robot
Library  Selenium2Library

*** Variables ***
${MOVIE_NAME}   Winter Sleep
${MOVIE_SCORE}   88


*** Test Cases ***
Vote for a Movie
    [setup]  Launch Browser
    Click Login Link
    Login to App
    Search a Movie  ${MOVIE_NAME}
    Click on Movie Image
    Check Movie Page Should Contains Movie Name  ${MOVIE_NAME}
    Vote for the Movie  ${MOVIE_SCORE}
    Log Out
    [teardown]  Close Browser