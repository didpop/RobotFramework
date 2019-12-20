*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Common.Insert testing data
Test Setup  Common.Begin web test
Test Teardown  Common.End web test
Suite Teardown  Common.Cleanup testing data
Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot

*** Test Cases ***
Lets do something
    [Documentation]  This is some basic info about the test
    [Tags]  Guns
    Amazon.Search for


Do next thing
    [Documentation]  This is some basic info about the test
    [Tags]  Guns
    Amazon.Search for
    # Amazon.Select profuct from search result
    # Amazon.Add product to cart


