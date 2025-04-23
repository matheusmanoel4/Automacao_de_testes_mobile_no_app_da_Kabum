*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SERVER_URL}      http://127.0.0.1:4725
${PLATFORM_NAME}   Android
${AUTOMATION_NAME}     UiAutomator2
${DEVICE_NAME}     emulator-5554
${APP_PACKAGE}     br.com.kabum.webviewapp
${APP_ACTIVITY}    br.com.kabum.webviewapp.MainActivity
${PLATFORM_VERSION}     15  

*** Keywords ***
Abrir app
    [Arguments]    ${SERVER_URL}    ${PLATFORM_NAME}    ${AUTOMATION_NAME}    ${DEVICE_NAME}    ${APP_PACKAGE}    ${APP_ACTIVITY}    ${PLATFORM_VERSION}
    Open Application    ${SERVER_URL}    platformName=${PLATFORM_NAME}    automationName=${AUTOMATION_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    platformVersion=${PLATFORM_VERSION}
    Sleep    5s
    click Element    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/btn_cancel"]