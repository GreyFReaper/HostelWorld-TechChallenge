*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
HT-006 : User enters incorrect email id.
     Open App
     Login Failure Incorrect email
     Close All Apps

HT-007 : User enters incorrect password.
     Open App
     Login Failure Incorrect email
     Close All Apps

*** Keywords ***
Login Failure Incorrect email
     Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
     Tap        ${HOMESCREEN_LOGIN}
     Wait Until Page Contains Element        ${LOGIN_EMAIL}
     Capture Page Screenshot
     Input Text         ${LOGIN_EMAIL}               qwerty
     Input Text         ${LOGIN_PASSWORD}            mohit.r787
     Tap                ${LOGIN_BUTTON}
     Capture Page Screenshot

Login Failure Incorrect password
     Wait Until Page Contains Element        ${HOMESCREEN_LOGIN}
     Tap        ${HOMESCREEN_LOGIN}
     Wait Until Page Contains Element        ${LOGIN_EMAIL}
     Capture Page Screenshot
     Input Text         ${LOGIN_EMAIL}               mohit.r787@gmail.com
     Input Text         ${LOGIN_PASSWORD}            qwerty
     Tap                ${LOGIN_BUTTON}
     Capture Page Screenshot