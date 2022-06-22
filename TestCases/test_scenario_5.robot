*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
HT-008 : User is able to navigate to the Account details screen with correct email and password.
     Open App
     Create Account Successfully
     Login Successful
     Close All Apps

HT-009 : User is able to logout.
     Open App
     Create Account Successfully
     Login Successful
     Logout
     Close All Apps

*** Keywords ***
Create Account Successfully
     Wait Until Page Contains Element        ${HOMESCREEN_CREATE_ACCOUNT}
     Tap        ${HOMESCREEN_CREATE_ACCOUNT}
     Wait Until Page Contains Element        ${REGISTER_FIRST_NAME}
     Input Text         ${REGISTER_FIRST_NAME}           ${FIRST_NAME}
     Input Text         ${REGISTER_LAST_NAME}            ${LAST_NAME}
     Input Text         ${REGISTER_EMAIL}                ${EMAIL}
     Input Text         ${REGISTER_PASSWORD}             ${PASSWORD}
     Tap                ${REGISTER_CREATE_ACCOUNT_BUTTON}
     Sleep          3 seconds

Login Successful
     Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
     Tap        ${HOMESCREEN_LOGIN}
     Wait Until Page Contains Element        ${LOGIN_EMAIL}
     Capture Page Screenshot
     Input Text         ${LOGIN_EMAIL}                 ${EMAIL}
     Input Text         ${LOGIN_PASSWORD}              ${PASSWORD}
     Tap                ${LOGIN_BUTTON}
     Wait Until Page Contains Element        ${ACCOUNT_NAME}
     Capture Page Screenshot

Logout
     Wait Until Page Contains Element        ${LOGOUT_BUTTON}
     Tap            ${LOGOUT_BUTTON}
     Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
     Capture Page Screenshot