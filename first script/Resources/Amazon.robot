*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/Cart.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/LandingPage.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/Product.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/SearchResults.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/SignIn.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/PO/TopNav.robot
Library  Selenium2Library

*** Keywords ***

Search for Products

    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed


Select Product from Search Results
    SearchResults.Click Product Link
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  No Thanks

Begin Checkout
    Click Button  id=siNoCoverage-announce
    Page Should Contain Element  hlb-ptc-btn-native

