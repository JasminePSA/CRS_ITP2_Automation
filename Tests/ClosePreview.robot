*** Settings ***
Library     SeleniumLibrary
Library     String
Library  DatabaseLibrary
Library  OperatingSystem
Library         RPA.Database
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/Resources/ITP2Keywords.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
${browser}      chrome
${url_qa}       http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
${DBName}  Civil Registry System
${DBUser}  PSA1User
${DBPassword}  PSA1User*Live
${DBHost}  10.62.150.248
${DBPort}  1433
${cibirthreqtype}  'CI'
${cibirthfirstname}      'Shaleen'
*** Keywords ***

*** Test Cases ***
Verify Recall
    Open Counter
    Wait Until Element Is Visible       ${home_menu}
    #Sleep 2
    Click Link        ${home_menu}
    Wait Until Element Is Visible       ${menu_clientcertificaterequest}
    Click Link      ${menu_clientcertificaterequest}
    Wait Until Element Is Visible       ${menu_walkinrequestentry}
    Click Link      ${menu_walkinrequestentryandpayment}
    Select From List By Index       ${transaction_typedropdown}     1
   # Select From List By Label   ${Select_dropdown-CI-B}
    Input Text      ${no_of_copies_text}        1
    Input Text      ${childlastname_text}       Thomas
    Input Text      ${childfirstname_text}      Shaleen
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
    Wait Until Element Is Visible       ${reqlastname}
    Sleep       2
    Input Text      ${reqlastname}      Tom
    Wait Until Element Is Visible       ${reqfirstname}
    sleep   2
    Input Text      ${reqfirstname}     John
    Wait Until Element Is Visible       ${reqaddress}
    sleep   2
    Input Text      ${reqaddress}       104
    Wait Until Element Is Visible       ${reqcountry}
    Select From List By Index       ${reqcountry}       2
    sleep   2
    #Maximize Browser Window
#   Wait Until Element Is Visible       ${reqprovince}
#   Sleep       2
#   Select From List By Index       ${reqprovince}      1
#   Sleep       2
#   Wait Until Element Is Visible       ${reqcity}
#   Sleep       2
#   Select From List By Index       ${reqcity}      1
    #Maximize Browser Window
    Input Text      ${amounttendered}       310.00
    sleep   2
    Press Keys      ${amounttendered}    ENTER
#    click button  ${payment_printor_button}
    sleep   4
    run keyword and continue on failure  ITP2Keywords.Jsexecution


    #${iterable_value}       get window handles
    sleep   2
    run keyword and continue on failure  ITP2Keywords.movingtoorwindow
    #Connect DB
    ${cibirthtransaction}=     RetrieveCIBtransactionfromdb     ${cibirthreqtype}       ${cibirthfirstname}
    close browser
#    ${iterable_obj}     iter(${iterable_value})
#    while True:
#    try:
#
#        # Iterate by calling next
#        item = next(${iterable_obj})
#        print(item)
#        except StopIteration:
#
#        # exception will happen when iteration will over
#        break



#    [documentation]  Retrieve transaction number  from db
#    Connect DB
#    ${output}=  Execute SQL String  select seriesno from encode.request where
#    Should Be Equal As Strings  ${output}  None
#
#    execute javascript  get window titles
#    sleep   6
#
#    ${list1}    get window handles
#    :FOR  ${Win} in ${list1}
#    Select Window   ${Win}



#    ${handles1}     get window handles
#    Switch Window   ${handles1}[1]
#    #window.setTimeout(resolve, 65000)
#    wait until page contains  Print
#    switch window  title should be  Official Receipts
#    sleep       1
#    ${handles0}     get window handles
#    go back
#    go to   Official Receipts
#    sleep   6
#    #click button    xpath=//*[@id="AlertButton"]
    #Click Button    ${printor}
    #Execute JavaScript      arguments[0].click(),8000    ARGUMENTS       ${ele}
    #Close window


#    Wait Until Element Is Visible   ${OR_numebr}
#    Sleep   4
#    ${psaor}  Get Text  ${OR_numebr}


    #Close window
    #${handles}    get window handles
    #Sleep       4
    #Switch Window   ${handles}[0]
    #Sleep   6
    #Close window
    #Click Button     ${print}
    #Sleep   4
    #Switch Window   ${handles2}[2]
    #Close window


#    Sleep   6
#    Switch Window   ${handles2}[1]
#    Sleep   6
#    ${qtn}  Get Text    ${qtn_value}
#    Log    Qtn value is ${qtn}
#    Switch Window   ${handles2}[1]
#    Close Window





#    @{list1}    get window handles
#    Sleep       4
#    FOR  ${win}  IN  @{list1}:
#       Switch window    ${win}
#       #Switch window    title:Official Receipts
#       Sleep       4
#       ${url}= get location
#       Sleep       4
#       log to  console ${url}
#    END
