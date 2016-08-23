*** Settings ***
Documentation     A test suite with a single test for invalid register.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
F1.S2.0002.Invalid-Register-BlankAll
    Open Browser To Register Page
    Input FirstName    ${EMPTY}
    Input LastName  ${EMPTY}
    Input GmailAddress  ${EMPTY}
    input password  ${EMPTY}
    Input PasswordAgain  ${EMPTY}
    Input BirthDay  ${EMPTY}
    Input BirthMonth  ${EMPTY}
    Input BirthYear  ${EMPTY}
    Input Gender   ${EMPTY}
    Input RecoveryPhoneNumber  ${EMPTY}
    Input RecoveryEmailAddress  ${EMPTY}
    Submit RegisterButton
    Validation Blank All Fields

F1.S2.0003.Invalid-Password-Unmatch
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  123456
    Input PasswordAgain  ${VALID PasswordAgain}
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation PasswordUnmatch

F1.S2.0004.Invalid-GmailAddress-already-taken
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  lamhot
    input password  ${VALID Password}
    Input PasswordAgain  ${VALID PasswordAgain}
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation UsernameIsTaken

F1.S2.0005.Invalid-Password-PasswordLessThan8Characters
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  1234567
    Input PasswordAgain  1234567
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation PasswordLessThan8Characters

F1.S2.0006.Invalid-Unsecure-Password
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  12345678
    Input PasswordAgain  12345678
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation WeakPassword

F1.S2.0007.Invalid-BirthDayandYear
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  ${VALID Password}
    Input PasswordAgain  ${VALID PasswordAgain}
    Input BirthDay  -1
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  ${VALID BirthYear}
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation InvalidBirthDay

F1.S2.0008.Invalid-BirthYear
    Open Browser To Register Page
    Input FirstName    ${VALID FirstName}
    Input LastName  ${VALID LastName}
    Input GmailAddress  ${VALID GmailAddress}
    input password  ${VALID Password}
    Input PasswordAgain  ${VALID PasswordAgain}
    Input BirthDay  ${VALID BirthDay}
    Input BirthMonth  ${VALID BirthMonth}
    Input BirthYear  1111
    Input Gender   ${valid Gender}
    Input RecoveryPhoneNumber  ${VALID RecoveryPhoneNumber}
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation InvalidBirthYear

F1.S2.0009.Invalid-RecoveryEmailAddress
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
    Input RecoveryEmailAddress  test
    Submit RegisterButton
    Validation InvalidRecoveryEmailAddress

F1.S2.0010.Invalid-RecoveryPhoneNumber
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
    Input RecoveryPhoneNumber  11
    Input RecoveryEmailAddress  ${VALID RecoveryEmailAddress}
    Submit RegisterButton
    Validation InvalidRecoveryPhoneNumber