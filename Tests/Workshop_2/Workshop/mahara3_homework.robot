*** Settings ***
Library		SeleniumLibrary
Test Setup  Open Browser To Mahara
Test Teardown    Capture Screenshot And Close Browser
Resource    ../../../Keywords/Mahara/mahara_keywords.txt

*** Test Cases ***
Test all users
    [Template]    Valid Login Different Users
    Admin    MaharaDemo
    student    MaharaDemo
    learner    MaharaDemo
    staff    MaharaDemo
    sitestaff    MaharaDemo