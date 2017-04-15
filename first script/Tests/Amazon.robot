*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  /Users/madhur/Desktop/robot/first script/Resources/Amazon.robot
Resource  /Users/madhur/Desktop/robot/first script/Resources/Common.robot

Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing data

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Variables ***

*** Test Cases ***
User must search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Search for Products


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout

