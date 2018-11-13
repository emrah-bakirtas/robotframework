*** Settings ***
Library  Selenium2Library

*** Variables ***
${TRUE}     TRUE

*** Keywords ***
Check Movie Page Should Contains Movie Name
    [Arguments]  ${MOVIE_NAME}
    ${MOVIE_TITLE} =  get text   css=#left_container > h1 > span
    ${MOVIE_TITLE} =  convert to uppercase  ${MOVIE_TITLE}
    ${MOVIE_NAME} =  convert to uppercase  ${MOVIE_NAME}
    should be equal  ${MOVIE_NAME}  ${MOVIE_TITLE}

Vote for the Movie
    [Arguments]  ${MOVIE_SCORE}
    ${ELEMENT_EXIST} =  Is Element Exist    css=#fi_editscore_link
    run keyword if  ${ELEMENT_EXIST} == ${TRUE}    click element  css=#fi_editscore_link
    click element  css=#fi_rating_div input
    input text  css=#fi_rating_div input    ${MOVIE_SCORE}
    click element  css=#fi_submit_link