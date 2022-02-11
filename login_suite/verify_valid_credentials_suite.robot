*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials

Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***



*** Keywords ***
Verify Valid Credentials Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    xpath=//button[@type='submit']
    Title Should Be    ${expected_title}


