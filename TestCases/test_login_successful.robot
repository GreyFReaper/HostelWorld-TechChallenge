*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
test_home_screen
     Open App
     Login Successful
     Close All Apps

*** Keywords ***
Login Successful
     Sleep          3 seconds
     Tap        ${HOMESCREEN_LOGIN}
     Sleep          3 seconds
     Capture Page Screenshot
     Sleep          3 seconds
     Input Text         ${LOGIN_EMAIL}           ${EMAIL}
     Input Text         ${LOGIN_PASSWORD}            ${PASSWORD}
     Tap                ${LOGIN_BUTTON}
     Capture Page Screenshot