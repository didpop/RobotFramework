*** settings ***
Resource  ../Resources/scope.robot

*** Variables ***
${MY_VARIABLE} =  Hello from local file

*** Test Cases ***
Set a variableqq
    [Tags]  case1
    ${my_newvariable} =  Set Variable  My new variable
    Log  ${my_newvariable}
    Log  @{MY_ARRAY}[0]

Variable demostration 2
    [Tags]  case2
    @{internal_array} =  Create List  Internal Var 1  Internal Var 2
    Log  ${MY_VARIABLE}
    Log  @{MY_ARRAY}[1]
    Log  @{internal_array}[0]
    Log  @{internal_array}[1]

Variable demostration 3
    [Tags]  case3
    Log  ${MY_VARIABLE}

*** Keywords ***
