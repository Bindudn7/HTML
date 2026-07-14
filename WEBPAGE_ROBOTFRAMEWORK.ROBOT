*** Settings ***
Documentation    functin 1
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
open the browser if credentials are correct
    open the browser link which is provided
    enter the details
    verify robot frame work page opens
    
*** Keywords ***
open the browser link which is provided
    Open Browser    file:///C:/Users/admin/OneDrive/Documents/Login_page1.html   chrome

enter the details
    input text    id:username    Bindu DN
    input password    id:password    Bindu@123
    Click button        signInBtn


verify robot frame work page opens
    ${elements} =    Get WebElements    css:.app

