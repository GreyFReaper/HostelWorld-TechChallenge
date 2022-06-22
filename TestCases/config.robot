*** Settings ***

Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub                              # URL to appium server
${PLATFORM_NAME}    Android                                                 # Device Platform
${PLATFORM_VERSION}    11                                                   # Device os version
${DEVICE_NAME}    emulator-5554                                             # Device name
${BUNDLE_ID}         com.hostelworld.qacodechallenge                        # Application bundle id
${APP_ACTIVITY}         com.hostelworld.qacodechallenge.MainActivity        # Landing App Activity

#Locator Information for Elements in the application
${HOMESCREEN_CREATE_ACCOUNT}                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.Button[1]
${HOMESCREEN_LOGIN}                                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.Button[2]
${REGISTER_FIRST_NAME}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[1]
${REGISTER_LAST_NAME}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[2]
${REGISTER_EMAIL}                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[3]
${REGISTER_PASSWORD}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[4]
${REGISTER_CREATE_ACCOUNT_BUTTON}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.Button
${LOGIN_EMAIL}                          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[1]
${LOGIN_PASSWORD}                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.EditText[2]
${LOGIN_BUTTON}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.Button

#Account Information
${FIRST_NAME}                           Mohit
${LAST_NAME}                            Rochwani
${EMAIL}                                mohit.r787@gmail.com
${PASSWORD}                             mohit.r787

*** Keywords ***
Open App
     Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}      appPackage=${BUNDLE_ID}    appActivity=${APP_ACTIVITY}    automationName=appium
     Capture Page Screenshot

Close All Apps
     Close All Applications
     
Test Timeout    60 seconds