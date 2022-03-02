*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blanck   ${BROWSER}
    Maximize Browser Window


End Web Test
    Close Browser