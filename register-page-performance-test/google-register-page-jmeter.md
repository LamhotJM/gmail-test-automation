## performance test
This repository contains any tools or script needed to help performance testing

## Installation
1. Download Jmeter from http://jmeter.apache.org/download_jmeter.cgi
2. Unzip the downloaded package to your preferred folder
3. Download standard set, extra set and webdriver plugin from http://jmeter-plugins.org/wiki/StandardSet/
4. Extract all plugin inside lib or ext folder, please follow the readme for each plugin

## Running Test
1. Click on jmeter.bat in windows and jmeter in unix environment to open up JMeter GUI
2. Open required jmx file inside this repository
3. Configure the test properly
4. Start test by accessing menu Run > Start or clicking on play button in the jmeter toolbar

##Testing Plan
`curl -X GET --header 'Accept: application/json'`
`https://accounts.google.com/signup`

`curl -X POST --header 'Accept: application/json' `
`https://accounts.google.com/signup`
```
{
  "input01":
   { "Input":"Passwd",
     "Passwd":"test1@Test",
     "PasswdAgain":"test1@Test",
     "FirstName":"Lorem Ipsum",
     "LastName":"Ipsum",
     "GmailAddress":"LoremIpsum"
     },  
   "Locale":"en"
}
```
### Post Google Signup
![post google signup](https://cloud.githubusercontent.com/assets/19463315/17838143/9a85bf68-67ef-11e6-82cc-11a2da337816.PNG)
### Test Plan
![test plan](https://cloud.githubusercontent.com/assets/19463315/17838146/9a8b25f2-67ef-11e6-8543-7cebfa828f50.PNG)
### Test Assertion 
![assert respond code](https://cloud.githubusercontent.com/assets/19463315/17838178/8d7a5d32-67f0-11e6-9554-761f607b8a41.PNG)
##Testing Case
### Post Test Name
![random name user register](https://cloud.githubusercontent.com/assets/19463315/17838145/9a891974-67ef-11e6-88de-dee99a30d02a.PNG)
### Thread Group
![thread group](https://cloud.githubusercontent.com/assets/19463315/17838147/9a8f5550-67ef-11e6-92b7-a64b2dcb15b3.PNG)
##Testing Report
### Report Result in Table
![view result in table](https://cloud.githubusercontent.com/assets/19463315/17838144/9a88d0ea-67ef-11e6-8227-33507444c96e.PNG)
### Report Result in Three
![view result tree](https://cloud.githubusercontent.com/assets/19463315/17838148/9a967416-67ef-11e6-9b65-bc496ef064da.PNG)
### Summary Report
![summary report](https://cloud.githubusercontent.com/assets/19463315/17838142/9a7c02b6-67ef-11e6-9cb1-01968ff04e6f.PNG)




