*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials

Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Comments ***
Create a template and pass the test methods
John, john123, Dutch, Invalid username or password
peter, peter123, Danish, Invalid username or password
Mark, Mark123, Greek, Invalid username or password

*** Test Cases ***
Verify Invalid Credential Test
    Input Text    id=authUser    john
    Input Password    id=clearPass    john123
    Select From List By Label    name=languageChoice    Dutch
    Click Element    xpath=//button[@type='submit']
    Element Should Contain    //div[contains(text(),'Invalid')]    Invalid username or password