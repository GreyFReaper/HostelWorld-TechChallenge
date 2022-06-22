*** Settings ***

Library           AppiumLibrary
Resource          config.robot

*** Test Cases ***
test_home_screen
     Open App
     Login Failure
     Close All Apps

*** Keywords ***
Login Failure
     Sleep          3 seconds
     Tap        ${HOMESCREEN_LOGIN}
     Sleep          3 seconds
     Capture Page Screenshot
     Sleep          3 seconds
     Input Text         ${LOGIN_EMAIL}               qwerty
     Input Text         ${LOGIN_PASSWORD}            qwerty
     Tap                ${LOGIN_BUTTON}
     Capture Page Screenshot