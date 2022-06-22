*** Settings ***

Library           AppiumLibrary
Resource          config.robot


*** Test Cases ***
HT-001 : User is able to see the create account button.
     Open App
     Verify Create Account Button
     Close All Apps

HT-002 : User is able to see the login button.
     Open App
     Verify Login Button
     Close All Apps

*** Keywords ***
Verify Create Account Button
    Wait Until Page Contains Element        ${HOMESCREEN_CREATE_ACCOUNT}
    Capture Page Screenshot

Verify Login Button
    Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
    Capture Page Screenshot
