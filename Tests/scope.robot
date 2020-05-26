*** Settings ***
Resource  ../Resources/scope.robot

*** Variables ***
${GLOBAL_VARIABLE} =  Value from global variable
${OVERWRITTEN_VARIABLE} =  Value from script file

*** Test Cases ***
Test with local and global variable
    ${local_variable} =  Set Variable  Value from local varaible
    Log  Local varaible - ${local_variable}
    Log  Global varaible - ${GLOBAL_VARIABLE}
    Log  Global Resource varaible - ${RESOURCE_VARIABLE}
    Log  Over written varaible - ${OVERWRITTEN_VARIABLE}

Test with global variable
    Log  Global varaible - ${GLOBAL_VARIABLE}
    Log  Global Resource varaible - ${RESOURCE_VARIABLE}
    Log  Over written varaible - ${OVERWRITTEN_VARIABLE}

*** Keywords ***


