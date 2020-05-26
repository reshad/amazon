*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.ca
${SEARCH_TERM} =  Xbox Wireless controller
${USERNAME} =  aihsiahsiahs
${PASSWORD} =  password1

*** Test Cases ***
User should be able to login
    [Tags]  Login
    AmazonApp.Login  ${USERNAME}  ${PASSWORD}

Logged out user should be able to search for product
    [Tags]  Current
    AmazonApp.Search for Products

Looged out user should be able to view a product
    [Documentation]  User can view a products in Amazon.ca website
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Looged out user should be able to add product to cart
    [Documentation]  User can add a product to cart in Amazon.ca website
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Documentation]  User must sign in to check out a cart on Amazon.ca website
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


