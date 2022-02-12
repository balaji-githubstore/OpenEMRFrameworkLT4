*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}         safari
${URL}      https://demo.openemr.io/b/openemr

*** Keywords ***
Launch Browser
    Set Local Variable    ${driver}        chromedriver

    IF    '${BROWSER_NAME}' == 'firefox'
        Set Local Variable    ${driver}        geckodriver
    ELSE IF  '${BROWSER_NAME}' == 'edge'
        Set Local Variable    ${driver}        msedgedriver
    ELSE IF  '${BROWSER_NAME}' == 'safari'
        Set Local Variable    ${driver}        safaridriver
    END

    Open Browser      browser=${BROWSER_NAME}      executable_path=${EXECDIR}${/}drivers${/}${driver}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}

End Browser
#    Capture Page Screenshot
    Close Browser