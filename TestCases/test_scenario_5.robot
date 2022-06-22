*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
HT-008 : User is able to navigate to the Account details screen with correct email and password.
     Open App
     Login Successful
     Close All Apps

*** Keywords ***
Login Successful
     Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
     Tap        ${HOMESCREEN_LOGIN}
     Wait Until Page Contains Element        ${LOGIN_EMAIL}
     Capture Page Screenshot
     Input Text         ${LOGIN_EMAIL}           ${EMAIL}
     Input Text         ${LOGIN_PASSWORD}            ${PASSWORD}
     Tap                ${LOGIN_BUTTON}
     Capture Page Screenshot