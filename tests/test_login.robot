*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Test Cases ***
Login Customer Successfully
    Open Browser    ${BASE_URL}    Chrome
    Wait Until Element Is Visible    ${BTN_CUSTOMER_LOGIN}    10
    Click Element   ${BTN_CUSTOMER_LOGIN}
    Wait Until Element Is Visible    ${SELECT_CUSTOMER_NAME}    10
    Select From List By Label    ${SELECT_CUSTOMER_NAME}    Harry Potter
    Click Element   ${BTN_LOGIN}
    Wait Until Element Is Visible    ${LABEL_WELCOME}    10
    Capture Page Screenshot
    [Teardown]    Close Browser