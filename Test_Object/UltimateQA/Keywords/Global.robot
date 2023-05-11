*** Settings ***
Library        SeleniumLibrary
Resource       ../../../Test_Object/UltimateQA/Resource/data.resource

*** Keywords ***
Open Chrome Browser 
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    \    chrome    options=${chrome_options}      executable_path=/usr/local/bin/chromedriver
    #Open Browser    \    ${Browser_Chrome}