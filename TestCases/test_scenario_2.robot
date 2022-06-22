*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
HT-005 : User enters the details correctly and is able to create account.
     Open App
     Create Account Successfully
     Close All Apps

*** Keywords ***
Create Account Successfully
     Wait Until Page Contains Element        ${HOMESCREEN_CREATE_ACCOUNT}
     Tap        ${HOMESCREEN_CREATE_ACCOUNT}
     Wait Until Page Contains Element        ${REGISTER_FIRST_NAME}
     Capture Page Screenshot
     Input Text         ${REGISTER_FIRST_NAME}           ${FIRST_NAME}
     Input Text         ${REGISTER_LAST_NAME}            ${LAST_NAME}
     Input Text         ${REGISTER_EMAIL}                ${EMAIL}
     Input Text         ${REGISTER_PASSWORD}             ${PASSWORD}
     Capture Page Screenshot
     Tap                ${REGISTER_CREATE_ACCOUNT_BUTTON}
     Sleep          3 seconds
     Capture Page Screenshot