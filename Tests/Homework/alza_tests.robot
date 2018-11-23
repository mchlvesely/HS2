*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/Homework/Alza_Keywords.txt
Variables    ../../Objects/Homework/Alza_objects.py
Test Setup    Open Browser and Maximize Window
Test Teardown    Capture Screenshot And Close Browser


***sdfgsdg***
Test Header Menu
    [Template]    Check Header Menu
    ${alza_cz}    ${televize}
    ${media}    ${knihy}
    ${hracky}    ${modely}
    ${parfemy}    ${hodinky}
    ${drogerie}    ${domacnost}
    ${sport}    ${fitness}
    ${hobby}    ${zahrada}
    ${auto}    ${pneu}
   
Test Filters
    [Template]    Check Filter
    ${barum}    Bridgestone
    ${letni}    Zimn   
      
*** Test Cases ***     
Test Sort
    [Template]    Check Sort
    nejdrazsi_button    nejdrazsi_product
    nejlevnejsi_button    nejlevnejsi_product     