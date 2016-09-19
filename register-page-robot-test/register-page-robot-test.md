## Installation 
- Enter to `register-page-robot-test` folder
- `virtualenv env`
- `source env/scripts/activate`
- `pip install -r requirements.txt`

## Description
Web testing with Robot Framework and Selenium2Library:
`Robot Framework` is a generic open source test automation framework and
`Selenium2Library` is one of the many test libraries that can be used with it.

## References

* http://robotframework.org
* https://github.com/rtomac/robotframework-selenium2library/wiki
* https://bitbucket.org/robotframework/webdemo/wiki/Home
* https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
* http://robotframework.org/Selenium2Library/doc/Selenium2Library.html#Introduction (Element Library)
* https://github.com/franz-see/Robotframework-Database-Library

## Database Testing  
- pip install PyMySQL
- pip install robotframework-databaselibrary

## API testing
* pip install -U requests
* pip install -U robotframework-requests

## Running
-  Enter to folder `register-page-robot-test` 
- `python -m robot.run register-tests`

## Testing Plan

Environment:
- Base URL  : `https://accounts.google.com` 
- Platform  : Windows 10

Tools    : Robot Framework, Selenium, Python

Exit criteria: All Test Suites are run.

Scope : Tesing Register Gmail (Valid and Invalid case)

## Testing Case
| Test  Case ID | Test Name                                    | Description                                     | Input                                      |
|---------------|----------------------------------------------|-------------------------------------------------|--------------------------------------------|
| F1.S1.0001    | Valid-Register                               | All field input are valid                       | All valid data                             |
| F1.S2.0002    | Invalid-Register-BlankAll                    | All field input are blank                       | All blanks                                  |
| F1.S2.0003    | Invalid-Password-Unmatch                     | Password and Password Confirmation aren't match | Password: 1 Confirmation:2                 |
| F1.S2.0004    | Invalid-GmailAddress-already-taken           | Gmail Address already taken (exist)             | lamhot                                     |
| F1.S2.0005    | Invalid-Password-PasswordLessThan8Characters | Password less than 8 characters                 | 1234567                                    |
| F1.S2.0006    | Invalid-Unsecure-Password                    | Common password                                 | 12345678                                   |
| F1.S2.0007    | Invalid-BirthDay                             | Invalid  Birth day                              | >31 or  <1                                 |
| F1.S2.0008    | Invalid-BirthYear                            | Invalid  Birth year                             | > now or < 1800                            |
| F1.S2.0009    | Invalid-RecoveryEmailAddress                 | Invalid format mail                             | testgmail.com                              |
| F1.S2.0010    | Invalid-RecoveryPhoneNumber                  | Invalid phone number                            | negative or < less than 8 number or string |

## Testing Report
### Register Test Log
![register test log](https://cloud.githubusercontent.com/assets/19463315/17880525/1803750c-6926-11e6-9d2d-13db987bf562.PNG)
### Register Test Report
![register test report](https://cloud.githubusercontent.com/assets/19463315/17880526/1803e5be-6926-11e6-882f-27e431d56f30.PNG)
### Screen shoot if Fail
![screenshoot if fail](https://cloud.githubusercontent.com/assets/19463315/17880527/1805241a-6926-11e6-9ce2-5ea95e5ced83.PNG)
### Summary Report on Command Line
![summary report](https://cloud.githubusercontent.com/assets/19463315/17880528/18073f98-6926-11e6-871d-56b7a2fd0b44.PNG)

