*** Settings ***
Test Setup   Log    Setup     
Test Teardown    Log    Teardown
Library     SeleniumLibrary

*** Test Cases ***
Mahara Invalid Login
    Open Browser    https://demo.mahara.org    opera
    Maximize Browser Window
    Sleep    5    
    Close Browser
    