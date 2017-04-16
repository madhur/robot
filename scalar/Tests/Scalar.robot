*** Settings ***


*** Variables ***
${MY_VARIABLE} =  This is my input data
@{MY_VARAIBLE2} =  Hello there  This is value 2  I am item 3

*** Test Cases ***
Set a variable in the test case
    [Tags]  current
    ${my_new_variable} =  set variable  My new variable
    log  ${my_new_variable}

Variable demonstration
    Log  ${MY_VARIABLE}
    Log  @{MY_VARAIBLE2}[0]
    Log  @{MY_VARAIBLE2}[1]
    Log  @{MY_VARAIBLE2}[2]

Variable demonstration 2
    Log  ${MY_VARIABLE}
    @{my_list_variable} =  Set Variable  Item 1  Item 2  Item 3
    Log  @{my_list_variable}[0]
    Log  @{my_list_variable}[1]
    Log  @{my_list_variable}[2]


*** Keywords ***
