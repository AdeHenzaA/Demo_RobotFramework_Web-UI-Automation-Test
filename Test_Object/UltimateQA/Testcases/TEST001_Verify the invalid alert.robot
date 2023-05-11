*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/Global.robot
Resource        ../Keywords/LoginPage.robot

*** Test Cases ***
1. Launch Browser and go to the address
         Open Chrome Browser
         Go to Sign in Page
2. Click the Sign In Button
     Click The Sign In Button
3. Make sure "Invalid email or password." displayed
     Message "Invalid email or password." is displayed