*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Variables ***
${BASE_URL}    https://globalsqa.com/angularJs-protractor/BankingProject/#/login

*** Test Cases ***
Deposit Money Successfully
    Open Browser    ${BASE_URL}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${BTN_CUSTOMER_LOGIN}    10
    Click Element   ${BTN_CUSTOMER_LOGIN}
    Wait Until Element Is Visible    ${SELECT_CUSTOMER_NAME}    10
    Select From List By Label    ${SELECT_CUSTOMER_NAME}    Harry Potter
    Click Element   ${BTN_LOGIN}
    Wait Until Element Is Visible    ${BTN_DEPOSIT}    10
    Click Element   ${BTN_DEPOSIT}
    Wait Until Element Is Visible    ${INPUT_DEPOSIT_AMOUNT}    10
    Input Text      ${INPUT_DEPOSIT_AMOUNT}    1000
    Click Element   ${BTN_CONFIRM_DEPOSIT}
    Wait Until Element Is Visible    ${LABEL_BALANCE}    10
    Capture Page Screenshot
    [Teardown]    Close Browser
