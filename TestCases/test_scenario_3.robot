*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
HT-003 : User leaves all the text box blank.
     Open App
     Create Account empty text fields
     Close All Apps

HT-004 : User enters invalid email.
     Open App
     Create Account invalid email
     Close All Apps

*** Keywords ***
Create Account empty text fields
     Wait Until Page Contains Element        ${HOMESCREEN_CREATE_ACCOUNT}
     Tap        ${HOMESCREEN_CREATE_ACCOUNT}
     Wait Until Page Contains Element        ${REGISTER_FIRST_NAME}
     Capture Page Screenshot
     Tap                ${REGISTER_CREATE_ACCOUNT_BUTTON}
     Sleep          3 seconds
     Capture Page Screenshot

Create Account invalid email
     Wait Until Page Contains Element        ${HOMESCREEN_CREATE_ACCOUNT}
     Tap        ${HOMESCREEN_CREATE_ACCOUNT}
     Wait Until Page Contains Element        ${REGISTER_FIRST_NAME}
     Capture Page Screenshot
     Input Text         ${REGISTER_FIRST_NAME}           ${FIRST_NAME}
     Input Text         ${REGISTER_LAST_NAME}            ${LAST_NAME}
     Input Text         ${REGISTER_EMAIL}                mohit.r787
     Input Text         ${REGISTER_PASSWORD}             ${PASSWORD}
     Capture Page Screenshot
     Tap                ${REGISTER_CREATE_ACCOUNT_BUTTON}
     Sleep          3 seconds
     Capture Page Screenshot