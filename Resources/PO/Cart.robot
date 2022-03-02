*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Add Product
    Wait Until Page Contains    Podsumowanie koszyka

Go to Cart
    Click Button    xpath=//*[@id="maincontent"]/div[2]/div/div[3]/div[2]/ul/li/button
