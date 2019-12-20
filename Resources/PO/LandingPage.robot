*** Settings ***

*** Keywords ***
Load page
    Go To  ${START_URL}

Verify page loaded
    Wait Until Page Contains  Your Account
