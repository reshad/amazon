*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log  Inserting testing data....
    Custom suite setup step

Cleanup Testing Data
    Log  Cleaning up testing data...
    Custom suite teardonw step

Custom suite setup step
    Log  This is a custom suite setup step...

Custom suite teardonw step
    Log  This is a custom suite teardown step...