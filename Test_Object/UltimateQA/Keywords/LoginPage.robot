*** Settings ***
Library        SeleniumLibrary
Resource       ../../../Test_Object/UltimateQA/Resource/data.resource

*** Keywords ***
Go to Sign in Page
    Go To    ${Url_SignIn} 
Click The Sign In Button
    Wait Until Element Is Visible    xpath=//button[@data-callback='onSubmit']
    Click Element    xpath=//button[@data-callback='onSubmit']
Message "Invalid email or password." is displayed
    #Click Element    xpath=//h2[text()[normalize-space()='Welcome Back!']]
    Wait Until Element Is Visible    xpath=//li[text()[normalize-space()='Invalid email or password.']]    timeout=30s
    Element Should Contain    xpath=//li[text()[normalize-space()='Invalid email or password.']]   Invalid email or password.
