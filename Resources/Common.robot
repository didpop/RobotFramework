*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL} =  http://www.amazon.ca
${BROWSER} =  chrome
${SEARCHFOR} =   ferrary

*** Keywords ***
Begin web test
    Open Browser  about:blank  ${BROWSER}


End web test
    Sleep  1s
    Close Browser

Insert testing data
    Log  Insert testing data

Cleanup testing data
    Log  Cleanup testing data