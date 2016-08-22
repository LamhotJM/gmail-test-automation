*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library  Selenium2Library

*** Variables ***
${RandomString}=         Generate Random String    10    [LETTERS]
${SERVER}         accounts.google.com
${BROWSER}        Firefox
${DELAY}          0
${VALID FirstName}     LoremIpsum
${VALID LastName}  LoremIpsum987654321
${VALID GmailAddress}     LoremIpsum12345678912345678RandomString
${VALID Password}  test123@Test
${VALID PasswordAgain}  test123@Test
${VALID BirthDay}  24
${VALID BirthMonth}  June
${VALID BirthYear}   1994
${VALID Gender}  Male
${VALID RecoveryPhoneNumber}  42334423424
${VALID RecoveryEmailAddress}  test@gmail.com

${REGISTER URL}    http://${SERVER}/SignUp?
${ERROR URL}      http://${SERVER}/SignUp?

*** Keywords ***
Open Browser To Regsiter Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Register Page Should Be Open

Register Page Should Be Open
    Title Should Be    Create your Google Account

Go To Register Page
    Go To    ${REGISTER URL}
    Register Page Should Be Open

Input FirstName
    [Arguments]    ${FirstName}
    Input Text    name=FirstName    ${FirstName}

Input LastName
    [Arguments]    ${LastName}
    Input Text    name=LastName    ${LastName}

Input GmailAddress
    [Arguments]    ${GmailAddress}
    Input Text   name=GmailAddress    ${GmailAddress}

Input Password
    [Arguments]    ${Passwd}
    Input Text    name=Passwd   ${Passwd}

Input PasswordAgain
    [Arguments]    ${PasswdAgain}
    Input Text    name=PasswdAgain    ${PasswdAgain}

Input BirthDay
    [Arguments]    ${BirthDay}
    Input Text    name=BirthDay    ${BirthDay}

Input BirthMonth
    [Arguments]    ${BirthMonth}
    Press Key  xpath=//div[@role='listbox']   ${BirthMonth}

Input BirthYear
    [Arguments]    ${BirthYear}
    Input Text    name=BirthYear   ${BirthYear}

Input Gender
    [Arguments]    ${Gender}
    Press Key   xpath=//div[@aria-activedescendant=':d']   ${Gender}

Input RecoveryPhoneNumber
    [Arguments]    ${RecoveryPhoneNumber}
    Input Text    name=RecoveryPhoneNumber    ${RecoveryPhoneNumber}

Input RecoveryEmailAddress
    [Arguments]    ${RecoveryEmailAddress}
    Input Text    name=RecoveryEmailAddress    ${RecoveryEmailAddress}

Submit RegisterButton
    Click Element   name=submitbutton

Submit Agree
    Click Element   xpath=//input[@id='TermsOfService']

