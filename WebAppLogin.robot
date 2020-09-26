*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/WebAppLogin.robot

*** Variables ***
#-------add var here------------

*** Test Cases ***
Valid Login
    Open Browser  <<----webappurl--->>  ie
    Sleep  5s
    
    Handle Alert  DISMISS
   
    Select Window  App - Log in
    Input Text  t_username  nazneen
    Input Text  t_password  nazneen
    Click Button  loginButton
    Sleep  5s
    Wait Until Element Is Visible  id=applicationTitle
    Set Selenium Implicit Wait   10s
   
    Close Browser
