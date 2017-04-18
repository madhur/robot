*** Settings ***
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/LandingPage.robot
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/TopNav.robot
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/SearchResults.robot
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/Product.robot
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/Cart.robot
Resource  /Users/madhur/Desktop/robot/explore-libraries/Resources/Web/PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded