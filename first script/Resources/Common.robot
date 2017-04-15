*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library

*** Keywords ***

Begin Web Test
    open browser  about:blank  chrome

End Web Test
    Close Browser

Insert Testing Data
    log  insert testing data

Cleanup Testing data
    log  cleanup testing data