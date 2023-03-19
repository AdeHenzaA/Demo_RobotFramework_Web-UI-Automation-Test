*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/Global.robot
Resource        ../Keywords/LoginPage.robot

*** Test Cases ***
1. Luncurkan Peramban dan pergi ke alamat
        Open Chrome Browser
        Go to Sign in Page
2. Klik Tombol Sign In
    Click The Sign In Button
3. Pastikan "Invalid email or password." ditampilkan
    Message "Invalid email or password." is displayed