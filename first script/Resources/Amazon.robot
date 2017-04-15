*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Keywords ***

Search for Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product from Search Results
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  signInSubmit

