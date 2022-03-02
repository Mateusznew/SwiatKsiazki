*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
 Load
    Go To    ${START_URL}


 Search the Product
    Input Text    xpath=//*[@id="search"]    ${SEARCH_TERM}
    Click Button    xpath=//*[@id="search_mini_form"]/div/div/button