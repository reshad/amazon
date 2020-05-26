*** Settings ***
Resource  ./PO/Cart.robot
Resource  ./PO/LandingPage.robot
Resource  ./PO/Product.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/TopNav.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login With Valid Credentials  ${Username}  ${Password}

Login With Invalid Credentials
    SignIn.Fill "Email" Field  wrong@reshads.com
    SignIn.Fill "Password" Field  wrong_password
    SignIn.Click "Sign In" Button

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded


