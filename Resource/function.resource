*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser from keyword
    [Arguments]    ${url}
    Open Browser    ${url}     chrome
    Maximize Browser Window
    Sleep    3s

First Name Input
    [Arguments]    ${first_name}
    Input Text  //*[@id='input_comp-lt33fcq41']    ${first_name}

Last Name Input
    [Arguments]    ${last_name}
    Input Text  //*[@id="input_comp-lt33fcs1"]    ${last_name}

Phone Number Input
    [Arguments]    ${phone_number}
    Input Text  //*[@id="input_comp-lt33fcsi1"]    ${phone_number}

Email Input
    [Arguments]    ${email}
    Input Text  //*[@id="input_comp-lt33fcsf1"]    ${email}

Number of adults Input
    [Arguments]    ${number_of_adults}
    Scroll Element Into View    //*[@id="collection_comp-lt33fcsl1"]    
    Click Element    //*[@id="collection_comp-lt33fcsl1"]
    Click Element    //*[@id="menuitem-${number_of_adults}"]

Have pet or not
    [Arguments]    ${pet}
    Click Element    //*[@id="comp-ltubl4ab"]/fieldset/div/label[${pet}]

Comment Input
    [Arguments]    ${comment}
    Input Text  //*[@id="input_comp-lt33fct3"]    ${comment}

Click Accept Button
    Click Element    //*[@id="comp-ltubl84u"]

Click Submit Button
    Click Element    //*[@id="comp-lt33fctj"]/button/span