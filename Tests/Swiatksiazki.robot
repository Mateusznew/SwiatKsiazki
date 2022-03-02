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
${START_URL} =  https://www.swiatksiazki.pl/
${SEARCH_TERM} =  Dan Brown Inferno


*** Test Cases ***
Test 1
    [Documentation]  Buy book
    [Tags]  Smoke
    SK.Search for the product
    SK.Add product to cart
    SK.Go to Signin