*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/AmazonLogin.robot

*** Variables ***
#---add your Variables-------

*** Test Cases ***
User must sign in to Cobra
    [Documentation]  This is to login to Cobra Appin IE
    [Tags]  Smoke
    Open Browser  http://www.amazon.com   ie
    Sleep  5s
    Close Browser

*** Keywords ***
#---add your keyword-------
