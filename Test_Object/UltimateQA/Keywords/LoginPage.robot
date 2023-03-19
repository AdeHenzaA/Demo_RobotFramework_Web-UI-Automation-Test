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
    Reload Page
    Wait Until Element Is Visible    css=div#notice>ul>li    timeout=30s
    Element Should Contain    css=div#notice>ul>li   Invalid email or password.
