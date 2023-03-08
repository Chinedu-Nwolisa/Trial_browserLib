*** Settings ***
Documentation    Keywords for Trial_Practice
#Library   SeleniumLibrary
Library   Browser
Resource  Variable.robot
Resource  Keywords.robot
#Library   FakerLibrary
Test Setup  Get to login page

*** Test Cases ***
#Go to APP Homepage
#   Get to login page

Register New User
   Click on register link
   Input user address
   Enter firstname for new user
   Enter lastname for new user
   Input user zipcode, phone number and SSN
   User to choose a username
   User to choose a Password   ${password_field}     ${confirm_password_field}
   Click on the register button

#Valid Login
#    Login user with valid credentials   Good    Boy123

Invalid Login
    Incorrect Login 1 (Valid Username, Invalid Password)    ${username}     ${password}
    Incorrect Login 2 (Invalid Username, Valid Password)    ${username}     ${password}



