*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User can search for products
    # Here we pass variable input data to a user defined keyword
    @{url_and_browser} =  Set Variable  https://www.amazon.ca  chrome

#    Begin Web Test  https://www.amazon.ca  chrome
    Begin Web Test  @{url_and_browser}

*** Keywords ***
Begin Web Test
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Close Browser