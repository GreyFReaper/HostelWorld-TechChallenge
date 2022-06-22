*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
test_home_screen
     Open App
     Create Account
     Close All Apps

*** Keywords ***
Create Account
     Sleep          5 seconds
     Tap        ${HOMESCREEN_CREATE_ACCOUNT}
     Sleep          5 seconds
     Capture Page Screenshot
     Sleep          5 seconds
     Input Text         ${REGISTER_FIRST_NAME}           ${FIRST_NAME}
     Input Text         ${REGISTER_LAST_NAME}            ${LAST_NAME}
     Input Text         ${REGISTER_EMAIL}                ${EMAIL}
     Input Text         ${REGISTER_PASSWORD}             ${PASSWORD}
     Capture Page Screenshot
     Tap                ${REGISTER_CREATE_ACCOUNT_BUTTON}
     Sleep          3 seconds
     Capture Page Screenshot