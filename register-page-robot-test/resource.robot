*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library | Selenium2Library |  run_on_failure=Nothing

*** Variables ***
${SERVER}         devxstaging.modalku.co.id
${BROWSER}        PhantomJS('phantomjs')
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      http://${SERVER}/webforms/membership/login.aspx
${WELCOME URL}    http://${SERVER}/webforms/investors/account.aspx
${ERROR URL}      http://${SERVER}/webforms/membership/login.aspx

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Member Login - Modalku

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    ContentPlaceHolder1_botemail    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ContentPlaceHolder1_botpw    ${password}

Submit Credentials
    Click Element   xpath=(//a[contains(text(),'SIGN IN')])[3]

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Akun Pemberi Pinjaman - Modalku


