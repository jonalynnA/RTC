# Created by jonalynnmasters at 2/2/24

*** Settings ***

Resource  ../Resources/Common.robot
Resource  ../Resources/PO/RTC_LandingPage.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Keywords ***

*** Test Cases ***
RTC Landing Page
    [Tags]  RTC
    [Documentation]  Landing Page
    RTC_LandingPage.Load
    RTC_LandingPage.Verify RTC Sign In Page Loaded