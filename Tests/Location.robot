*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
Lets do something
    [Documentation]  This is some basic info about the test
    [Tags]  Guns
    Log  Logging some text here
    Open Browser  http://www.amazon.ca  chrome
    Wait Until Page Contains  Your Account
    Input Text  id=twotabsearchtextbox  Fujifilm X-pro2
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait until page contains  results for "Fujifilm X-pro2"
    Click Link  partial link=Fujifilm X-Pro 2G/XF2
    Wait until page contains  Fujifilm X-Pro 2G/XF23 Mirrorless Digital Camera
    Click button  name=submit.add-to-cart
    Wait until page contains  Cart subtotal
    Click button  css=#attach-sidesheet-checkout-button > span > input
    Sleep  3s
    Close Browser
Lets do something else
    [Documentation]  This is some basic info about the second test
    [Tags]  Pistols
    Log  Logging some text here
    Open Browser  http://www.google.ca  chrome


*** Keywords ***
