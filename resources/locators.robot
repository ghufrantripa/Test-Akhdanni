*** Variables ***
${BASE_URL}                https://globalsqa.com/angularJs-protractor/BankingProject/#/login

# Buttons
${BTN_CUSTOMER_LOGIN}      xpath=//button[contains(., 'Customer Login')]
${BTN_LOGIN}               xpath=//button[text()='Login']
${BTN_DEPOSIT}             xpath=//button[contains(., 'Deposit')]
${BTN_WITHDRAWL}           xpath=//button[contains(., 'Withdrawl')]
${BTN_CONFIRM_DEPOSIT}     xpath=//button[contains(., 'Deposit')]
${BTN_CONFIRM_WITHDRAW}    xpath=//button[contains(., 'Withdraw')]

# Inputs
${INPUT_DEPOSIT_AMOUNT}    xpath=//input[@ng-model='amount']
${INPUT_WITHDRAW_AMOUNT}   xpath=//input[@ng-model='amount']

# Labels
${LABEL_WELCOME}           xpath=//strong[contains(text(), 'Welcome')]
${LABEL_BALANCE}           xpath=//strong[@ng-bind='account.balance']

# Dropdowns
${SELECT_CUSTOMER_NAME}    xpath=//select
