*** Settings ***
Library        SeleniumLibrary
Resource       ../../../Test_Object/UltimateQA/Resource/data.resource

*** Keywords ***
Go to Sign in Page
    Go To    ${Url_SignIn} 
Click The Sign In Button
    Wait Until Element Is Visible    xpath=//input[@type='submit']
    Click Element    xpath=//input[@type='submit']
Message "Invalid email or password." is displayed
    #Click Element    xpath=//h2[text()[normalize-space()='Welcome Back!']]
    Page Should Contain    Please enter a username and password.
