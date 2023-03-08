*** Settings ***
Documentation    Keywords for Trial_Practice
#Library   SeleniumLibrary
Library   Browser
Resource  Variable.robot
Library   FakerLibrary



*** Keywords ***
Get to login page
    new browser  Chromium  headless=true
    new page   ${URL}

Click on register link
    Click  ${REGISTER_LINK}

Input user address
    fill text   ${ADDRESS_FIELD}      Ikenga Ogidi
    fill text     ${CITY}     Onitsha
    fill text    ${STATE}    Anambra

Enter firstname for new user
     ${firstname}=   FakerLibrary.First Name
     log  ${firstname}
     Set Test Variable    ${firstname}
     fill text  ${FIRST_NAME_FIELD}    ${firstname}

Enter lastname for new user
     ${lastname}=  FakerLibrary.Last Name
     log  ${lastname}
     Set Test Variable    ${lastname}
     fill text  ${LAST_NAME_FIELD}     ${lastname}

Input user zipcode, phone number and SSN
    fill text    ${ZIP_CODE}     67543
    fill text    ${PHONE}     07033481199
    fill text    ${SSN}       1132-543

User to choose a username
    ${username}=  FakerLibrary.User Name
     log  ${username}
     Set Test Variable    ${username}
     fill text  ${USERNAME_FIELD}     ${username}

User to choose a Password
    [Arguments]     ${password_field}     ${confirm_password_field}
    fill text    ${PASSWORD_FIELD}    ${password_field}
    fill text   ${CONFIRM_PASSWORD_FIELD}    ${confirm_password_field}

Click on the register button
    Click    ${REGISTER_BTN}

Login user with valid credentials
    [Arguments]     ${username}     ${password}
    fill text    ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    fill text    ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    fill text    ${LOGIN_BTN}

Incorrect Login 1 (Valid Username, Invalid Password)
    [Arguments]     ${username}     ${password}
    fill text    ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    fill text   ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    Click    ${LOGIN_BTN}

Incorrect Login 2 (Invalid Username, Valid Password)
    [Arguments]     ${username}     ${password}
    fill text   ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    fill text    ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    Click    ${LOGIN_BTN}