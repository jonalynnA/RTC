*** Settings ***
Resource  ../Resources/PO/RTC_LandingPage.robot

*** Variables ***

*** Keywords ***

#Standard System Test
RTC Landing
    RTC_LandingPage.Load
    RTC_LandingPage.Verify RTC Sign In Page Loaded

