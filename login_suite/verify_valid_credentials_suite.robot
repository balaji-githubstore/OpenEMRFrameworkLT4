*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials

Resource    ../pages/login_page.resource
Resource    ../pages/main_page.resource

#Library     DataDriver      file=../test_data/OpenEMRData.xlsx      sheet_name=VerifyValidCredentialsTemplate
Library     DataDriver      file=../test_data/verify_valid_credentials.csv

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template   Verify Valid Credentials Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credentials Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Enter Username  ${username}
    Enter Password   ${password}
    Select Language Using Label     ${language}
    Click Login
    Main Page Title Should be       ${expected_title}


