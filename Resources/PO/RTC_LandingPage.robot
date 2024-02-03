*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL}    https://ertc-spot.vercel.app/
${ENTER_EMAIL}  /html/body/div[1]/div/div[2]/div[2]/input
*** Keywords ***
Load
    Go To    ${START_URL}

Verify RTC Sign In Page Loaded
    Wait until page contains    Sign In
    Page should contain    Email