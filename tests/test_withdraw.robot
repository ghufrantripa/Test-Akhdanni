*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Test Cases ***
Withdraw Money Successfully
    Open Browser    ${BASE_URL}    Chrome
    Wait Until Element Is Visible    ${BTN_CUSTOMER_LOGIN}    10
    Click Element   ${BTN_CUSTOMER_LOGIN}
    Wait Until Element Is Visible    ${SELECT_CUSTOMER_NAME}    10
    Select From List By Label    ${SELECT_CUSTOMER_NAME}    Harry Potter
    Click Element   ${BTN_LOGIN}
    Wait Until Element Is Visible    ${BTN_WITHDRAWL}    10
    Click Element   ${BTN_WITHDRAWL}
    Wait Until Element Is Visible    ${INPUT_WITHDRAW_AMOUNT}    10
    Input Text      ${INPUT_WITHDRAW_AMOUNT}    500
    Click Element   ${BTN_CONFIRM_WITHDRAW}
    Wait Until Element Is Visible    ${LABEL_BALANCE}    20
    Capture Page Screenshot
    [Teardown]    Close Browser
