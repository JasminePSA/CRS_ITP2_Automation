*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/Resources/ITP2Keywords.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
*** Keywords ***

*** Test Cases ***
Verify advisoryondeath
    Open Counter
    Sleep       2
    Wait Until Element Is Visible       ${home_menu}
    Click Link      ${home_menu}
    Sleep       2
#    Wait Until Element Is Visible   ${more_menu}
#    Sleep       6
#    Click Image  ${more_menu}
#    Sleep       2
#    Wait Until Element Is Visible  ${menu_queuemanagementsystem}
#    Sleep       2
#    Click Link  ${menu_queuemanagementsystem}
#    Sleep       2
#    Wait Until Element Is Visible   ${submenu_queueticketingsystem}
#    Click Link  ${submenu_queueticketingsystem}
#    Sleep   6
#    ${handles}    get window handles
#    Sleep       4
#    Switch Window   ${handles}[1]
#    Sleep   6
#    Click Button     ${regular_button}
#    Sleep   4
#    Click Button        ${encodingandpayment_button}
#    Sleep   2
#    ${handles2}    get window handles
#
#    Sleep   6
#    Switch Window   ${handles2}[1]
#    Sleep   6
#    ${qtn}  Get Text    ${qtn_value}
#    Log    Qtn value is ${qtn}
#
#    Switch Window   ${handles2}[1]
#    Close Window
#    Switch Window   ${handles2}[0]
#
#    [Documentation]     Selecting home and walkin request entry
#
#    Wait Until Element Is Visible       ${menu_clientcertificaterequest}
#    Click Link      ${menu_clientcertificaterequest}
#    Wait Until Element Is Visible       ${menu_walkinrequestentry}
#    Click Link      ${menu_walkinrequestentry}
#    [Documentation]     Entering queue ticket number
#    Wait Until Element Is Visible   ${qtn_text}
#    Sleep       2
#    Input Text      ${qtn_text}     ${qtn}
#    ${transaction_number_created}=     EncodeCenodeathTransaction
#
#    Click button    ${startaclient_button}
#    [Documentation]     Navigating to receive payment screen
#    Wait Until Element Is Visible    ${certificate_request_payment_menu}
#    sleep  2
#    Click Link  ${certificate_request_payment_menu}
#    Wait Until Element Is Visible  ${receive_payments_menu}
#    sleep   2
#    Click Link  ${receive_payments_menu}
#    Sleep   2
#    Select From List By Index       ${serachtransaction_dropdown}     1
#    Input Text  ${Payment_qtn_text}     ${qtn}
#    Receivepaymentworking
#    Changeoutletcodeto002
    #Navigatetorsoandentertransactionnumber  ${transaction_number_created}
#    Navigatetorsoandentertransactionnumber      08297-003-00077-001
#    Generateadvisoryondeath
#
#    Changeoutletcodeto003
    SelectReleasing
    #input text      ${releasing_qtn_text}    ${qtn}
    input text      ${releasing_tranno_text}        08297-003-00077-001
    Printcertificate



