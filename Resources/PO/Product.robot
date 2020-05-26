*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results
    Wait Until Page Contains  Add to Cart

Add to Cart
    Click Button  id=add-to-cart-button