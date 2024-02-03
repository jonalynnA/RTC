*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}  chrome
${START_URL}  https://ertc-spot.vercel.app/

*** Keywords ***
Begin Web Test
    OPEN BROWSER  ${start_url} ${Browser}
    MAXIMIZE BROWSER WINDOW


End Web Test
    Close Browser