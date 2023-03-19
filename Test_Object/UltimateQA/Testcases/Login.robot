*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/Global.robot
Resource        ../Keywords/LoginPage.robot

Documentation    This is UI Automation Test on the Signin Page

*** Test Cases ***
1. Press signin button without enter any credential
    [Documentation]    Test Steps : 
    ...                - Open Chrome Browser
    ...                - Go to Login Page 
    ...                - Click Signin button
    ...                - Make sure the Warning Message displayed
    [Tags]    Login
    Set Test Message    Verification Passed    
    #1. Start
        Open Chrome Browser
        Go to Sign in Page
    #2. Verification
        Click The Sign In Button
        Message "Invalid email or password." is displayed