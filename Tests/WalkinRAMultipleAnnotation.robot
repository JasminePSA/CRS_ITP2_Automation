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
Verify WalkinRAMultipleAnnotation
    [Documentation]     This is to call open counter reusable code
    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2

    [Documentation]     Selecting Home and menu
    Click Link        ${home_menu}
    Wait Until Element Is Visible       ${menu_clientcertificaterequest}
    Click Link      ${menu_clientcertificaterequest}
    Wait Until Element Is Visible       ${menu_walkinrequestentry}
    Click Link      ${menu_walkinrequestentryandpayment}

    [Documentation]     Selecting transactiontype Regular annotation birth
    Select From List By Index       ${transaction_typedropdown}     22
    Wait Until Element Is Visible       ${select_doctype}
    sleep   2

    [Documentation]     Selecting doctype and wizard checklist for first document type
    select from list by index   ${select_doctype}       3
    Select checkbox      ${court_decisionnew}
    Select checkbox      ${certificateof_finality}
    select checkbox      ${certificateofregistration}
    select checkbox      ${certificateof_authenticity}
    select checkbox       ${certificateof_livebirth}
    Wait Until Element Is Visible       ${done_button}
    click button        ${done_button}

    [Documentation]     Selecting doctype and wizard checklist for second document type
    select from list by index   ${select_doctype}       4
    Select checkbox      ${court_decisionnew}
    Select checkbox      ${certificateof_finality}
    select checkbox      ${certificateofregistration}
    select checkbox      ${certificateof_authenticity}
    select checkbox     ${certificateof_livebirth_marriage}
    Wait Until Element Is Visible       ${done_button}
    sleep   2
    click button    ${done_button}
    Wait Until Element Is Visible       ${wizard_submit_button}
    sleep   2
    click button    ${wizard_submit_button}
    #Wait Until Element Is Visible   ${no_of_copies_text}
    #Input Text      ${no_of_copies_text}        1

    [Documentation]     Encode Birth form -Request Details
    Wait Until Element Is Visible       ${childlastname_text}
    sleep   4
    Input Text      ${childlastname_text}       Thomas
    Input Text      ${childfirstname_text}      Jasmine
    Select From List By Index       ${sex_dropdown}     2
    Select From List By Index       ${dateofbirth_month}        2
    Input Text      ${dateofbirth_date}     01
    Input Text      ${dateofbirth_year}     2018
    Select From List By Index       ${province}        2
    Select From List By Index       ${city}     2
    Input Text      ${mother_lastname}      Ann
    Input Text      ${mother_firstname}     Maria
    Select From List By Index   ${request_purpose}      3
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}
    #driver.execute_script("window.scrollTo(100, document.body.scrollHeight);")

    [Documentation]     recall functionality
    Wait Until Element Is Visible       ${recall_button}
    Sleep       2
    Click Button        ${recall_button}
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}

    [Documentation]     Encode Birth form -Requester Details
    Wait Until Element Is Visible       ${reqlastname}
    Sleep       2
    Input Text      ${reqlastname}      Tom
    Wait Until Element Is Visible       ${reqfirstname}
    Sleep       2
    Input Text      ${reqfirstname}     John
    Wait Until Element Is Visible       ${reqaddress}
    Sleep       2
    Input Text      ${reqaddress}       104
    Wait Until Element Is Visible       ${reqcountry}
    Select From List By Index       ${reqcountry}       2
    Sleep       2
    # Input Text      ${amounttendered}       310.00
    #first_tab_handle = driver.current_window_handle
    Click Button    ${printor}
#    print("first_tab_handle : "+str(first_tab_handle))
#    Suite Teardown  Close All Browsers
    #driver.switch_to.window(driver.window_handles[1])
    #ctrl_click_tab = driver.current_window_handle


