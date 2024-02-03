*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL}    https://ertc-spot.vercel.app/
${ENTER_EMAIL_FIELD}  xpath=//input[@value='']
${ENTER_PASSWORD_FIELD}    xpath=//div[3]/input
${TEST_USER_EMAIL}    umardev.works@gmail.com
${TEST_USER_PASSWORD}    B1880120@
${SIGN_IN_BUTTON}    xpath=//*/text()[normalize-space(.)='Sign In']/parent::*

*** Keywords ***
Load
    Go To    ${START_URL}

Verify RTC Sign In Page Loaded
    Wait until page contains    Sign In
    Page should contain    Email

Sign In
    Click element    ${ENTER_EMAIL_FIELD}
    Input text  ${ENTER_EMAIL_FIELD}    ${TEST_USER_EMAIL}
    click element  ${ENTER_PASSWORD_FIELD}
    Input text  ${ENTER_PASSWORD_FIELD}    ${TEST_USER_PASSWORD}
    Click element    ${SIGN_IN_BUTTON}
    sleep  5s