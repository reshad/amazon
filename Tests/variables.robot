*** Settings ***
Documentation  This is some basic info about the whole suite

*** Variables ***
# Scalar variable examples below
${MY_VARIABLE} =  GlobalVariable

# List variable examples below
@{MY_LIST_VARIABLE} =  Variable 1  Variable 2  Variable 3

*** Test Cases ***
Scalar variable in test case
    [Tags]  Current
    # Global Scalar variable example
    Log  Here's is my global scalar variable - ${MY_VARIABLE}

    # Global List variable example
    Log  Here's is my global list variable - @{MY_LIST_VARIABLE}

    # Local scalar variable example
    ${my_local_variable} =  Set Variable  Setting my local variable
    Log  Here's is my local variable - ${my_local_variable}

List varibale example test case
    [Tags]  listv
    # Global list variable example
    Log  @{MY_LIST_VARIABLE}[0]
    Log  @{MY_LIST_VARIABLE}[1]
    Log  @{MY_LIST_VARIABLE}[2]

    # Local list variable example
    @{my_list_variable} =  Set Variable  localv 1  localv 2  localv 3
    # @{my_list_variable} =  Create List  localv 1  localv 2  localv 3
    Log  @{my_list_variable}[0]
    Log  @{my_list_variable}[1]
    Log  @{my_list_variable}[2]
