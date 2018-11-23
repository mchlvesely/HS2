*** Settings ***
Library    SeleniumLibrary
Variables    ../../Objects/Automation_Practice/Automation_Practice.py
Test Setup    Open Browser To AutomationPractice   
Test Teardown    Close Browser

*** Variables ***
${browser}    chrome
${url}    http://automationpractice.com

*** Test Cases ***
Register to eshop
    Click Link    ${link_login}
    Wait Until Page Contains Element    ${auth_tbox_email}     
    Input Text    ${auth_tbox_email}    hello@halllo.com
    Click Button   ${btn_create_account}
    Wait Until Page Contains Element    ${sup_radio_mrs}
    Click Element    ${sup_radio_mrs}
    Input Text    ${sup_tbox_first_name}    Hacker
    Input Text    ${sup_tbox_last_name}    School
    Textfield Should Contain    ${sup_tbox_email}    hello@halllo.com
    Input Password    ${sup_pwd_password}    password
    Select From List By Index    ${sup_dropdown_day}    26
    Select From List By Label    ${sup_dropdown_month}    September${SPACE}
    Select From List By Value    ${sup_dropdown_year}    1905
    Select Checkbox    ${sup_chck_newslettter}
    Input Text    ${addr_tbox_first_name}    Hacker
    Input Text    ${addr_tbox_last_name}    School        
    Input Text    ${addr_tbox_company}    MSD
    Input Text    ${addr_tbox_address1}    Smichov
    Input Text    ${addr_tbox_city}    Praha
    Select From List By Value    ${addr_dropdown_state}    19
    Input Text    ${addr_tbox_zip}    15000
    Select From List By Value    ${addr_dropdown_country}    21
    Input Text    ${addr_tbox_cellphone}    123456789
    Input Text    ${addr_tbox_alias}    My Adress   
    
*** Keywords ***
Open Browser To AutomationPractice
	Open Browser	${url}		${browser}    
	Maximize Browser Window           
           