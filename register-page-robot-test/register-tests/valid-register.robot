*** Settings ***
Documentation     A test suite with a single test for valid register.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
F1.S1.0001.Valid-Register
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  ${VALID Password}
    Input PasswordAgain  ${VALID PasswordAgain}
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Success Register