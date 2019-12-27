*** settings ***

*** Variables ***
${MY_VARIABLE} =  Hello there

*** Test Cases ***
Set a variable
    [Tags]  Current
    $(my_newvariable) =  Set Variable  My new variable
    Log  ${my_newvariable}

Variable demostration 1
    Log  ${MY_VARIABLE}

Variable demostration 2
    Log  ${MY_VARIABLE}

*** Keywords ***
