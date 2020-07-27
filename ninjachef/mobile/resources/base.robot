***Settings***
Documentation       Código base para abrir uma sessão com o Appium Server

Library     AppiumLibrary

Resource    kws.robot

***Keywords***
# HOOKS
Open Session
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2           
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/ninjachef.apk
    ...                     udid=emulator-5554
    ...                     adbExecTimeout=120000

Close Session
    Capture Page Screenshot
    Close Application       