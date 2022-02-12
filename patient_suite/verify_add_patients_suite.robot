*** Settings ***
Documentation      This file handles all the test case related to patients

Resource    ../pages/login_page.resource

*** Test Cases ***
Verify Add Patient Test
    Enter Username      admin
    Enter Password      pass
    Select Language Using Label    English (Indian)
    Click Login
    Click Element    xpath=//div[text()='Patient/Client']
    Click Element    xpath=//div[text()='Patients']
    Select Frame    xpath=//iframe[@name='fin']
    Click Element    id=create_patient_btn1
    Unselect Frame
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    css=#form_fname      balaji
    Input Text    id=form_DOB    2022-02-12
    Comment     Complete remaining steps using below comment
    Unselect Frame

    Run Keyword And Ignore Error    Click Element    xpath=//div[@class='closeDlgIframe']








*** Comments ***
Navigate onto https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
Update username as admin
Update password as pass
Click on the login button
Click on Patient/Client and Click on Patients
Click Add New Patient
Add the first name, last name
Update DOB as today's date
Update the Sex
 Click on the create new patient button above the form
 Click on confirm create new patient button.
 Print the text from alert box
 Handle alert
 Close the Happy Birthday popup
 Get the added patient name and print in the console.
