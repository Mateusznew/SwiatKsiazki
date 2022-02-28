*** Settings ***
Documentation  Search and buy book
Library  SeleniumLibrary
Resource  ../Resources/SK.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/swiatksiazki.robot

*** Variables ***
${BROWSER} =  chrome
${START_PAGE} =  https://www.swiatksiazki.pl/
${SEARCH_TERM} =  Dan Brown Inferno


*** Test Cases ***
Search for the product
    [Documentation]  Buy book
    [Tags]  Smoke
    Open Browser  https://www.swiatksiazki.pl/  chrome
    Input Text    xpath=//*[@id="search"]    Dan Brown Inferno
    Click Button    xpath=//*[@id="search_mini_form"]/div/div/button
Add product to cart
    Maximize Browser Window
    Execute Javascript  window.scrollTo(0,200)
    Click Image    xpath=//*[@id="product-item-info_723966"]/a/span/span/img
    Execute Javascript  window.scrollTo(0,200)
    Click Button    xpath=/html/body/div[2]/section/div/div[2]/button
    Sleep    3s
    Click Element    xpath=//*[@id="product-addtocart-button"]/span
    Click Element    xpath=/html/body/div[2]/header/div[2]/div[1]/div/div[3]/div/a
    Sleep    3s
    Wait Until Page Contains Element    xpath=/html/body/div[2]/header/div[2]/div[1]/div/div[3]/div/a  timeout=3
    Click Link    xpath=//*[@id="minicart-content-wrapper"]/div[3]/div[3]/div/a
Go to Signin
    Wait Until Page Contains    Podsumowanie koszyka
    Click Button    xpath=//*[@id="maincontent"]/div[2]/div/div[3]/div[2]/ul/li/button


    Close Browser




*** Keywords ***
