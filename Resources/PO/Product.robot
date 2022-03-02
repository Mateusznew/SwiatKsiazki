*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verivy Search Product
    Wait Until Page Contains    Sortuj wg
    Execute Javascript  window.scrollTo(0,200)



Add Product to Cart
    Click Image    xpath=//*[@id="product-item-info_723966"]/a/span/span/img
    Execute Javascript  window.scrollTo(0,200)
    Click Button    xpath=/html/body/div[2]/section/div/div[2]/button
    Sleep    3s
    Click Element    xpath=//*[@id="product-addtocart-button"]/span
    Click Element    xpath=/html/body/div[2]/header/div[2]/div[1]/div/div[3]/div/a
    Sleep    3s
    Wait Until Page Contains Element    xpath=/html/body/div[2]/header/div[2]/div[1]/div/div[3]/div/a  timeout=3
    Click Link    xpath=//*[@id="minicart-content-wrapper"]/div[3]/div[3]/div/a