*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***
Deve realizar um click simples
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 automationName=UiAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 newCommandTimeout=300

    Wait Until Page Contains    ${START}    5
    Click Text    ${START}

    ${hamburger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        
    Wait Until Element Is Visible    ${hamburger}    5
    Click Element    ${hamburger}

    Sleep    5

    Close Application