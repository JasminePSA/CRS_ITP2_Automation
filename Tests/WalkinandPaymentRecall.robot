*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/Resources/ITP2Keywords.robot
Resource    C:/Users/ThomasJ1/PycharmProjects/CRSITP2/ObjectRepository/ITP2Locators.robot
#from selenium import webdriver
*** Variables ***
${browser}  chrome
${url_qa}   http://ustr-erl2-3644.na.uis.unisys.com:9205/?ActiveWkstUserDetails=SU4tVEhPTUFTSjE=
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
    Wait Until Element Is Visible       ${recall_button}
    Sleep       2
    Click Button        ${recall_button}
    Execute Javascript  window.scrollTo(0,2000)
    Wait Until Element Is Visible       ${save_button}
    Sleep       2
    Click Button        ${save_button}
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
    #Maximize Browser Window
#    Wait Until Element Is Visible       ${reqprovince}
#    Sleep       2
#    Select From List By Index       ${reqprovince}      1
#    Sleep       2
#    Wait Until Element Is Visible       ${reqcity}
#    Sleep       2
#    Select From List By Index       ${reqcity}      1
    #Maximize Browser Window
    Sleep       2
    Input Text      ${amounttendered}       310.00
    Sleep       2
    #first_tab_handle = driver.current_window_handle
    Click Button    ${printor}
    Sleep       4
    #print("first_tab_handle : "+str(first_tab_handle))




#   @{WindowHandles}=     SeleniumLibrary.Get Window Handles
#   Sleep    4s
#   @{WindowIdentifier}=  SeleniumLibrary.Get Window Identifiers
#   Sleep    4s
#    @{WindowNames}=       SeleniumLibrary.Get Window Names
#    SeleniumLibrary.Switch Window       @{WindowHandles}[1]
#    #Log @{WindowHandles}
#    Sleep    4s
#    Close       Window
#    SeleniumLibrary.Switch Window  @{WindowHandles}
#    Close       Window
        ${current_handle} = self.current_window_handle
        self.switch_to.window(close_handle)
        self.close()
        if current_handle == close_handle:
            # closing active window, try to switch
            # to first window
            if self.window_handles:
                self.switch_to_first_window()
        else:
            # closing another window.
            # switch back to original handle
            self.switch_to.window(current_handle)

