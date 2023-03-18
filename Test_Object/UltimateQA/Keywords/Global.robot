*** Settings ***
Library        SeleniumLibrary
Resource       ../../../Test_Object/UltimateQA/Resource/data.resource

*** Keywords ***
Open Chrome Browser 
    Open Browser    \    ${Browser_Chrome}