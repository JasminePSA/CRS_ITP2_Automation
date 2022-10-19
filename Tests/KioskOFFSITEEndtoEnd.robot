*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/Resources/ITP2Keywords.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
from selenium import webdriver
*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
*** Keywords ***

*** Test Cases ***
Verify KioskEncoding
    [Documentation]     This is to call open counter reusable code
    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2

    [Documentation]     Selecting Home and menu
    Click Link        ${home_menu}
    Setkioskrole
