*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close All Browsers
Resource    Resource/variable.resource
Resource    Resource/function.resource

*** Test Cases ***
Verify registration form with all input fields
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Wait Until Page Contains    Verification    timeout=5s

Required fields First Name
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    # First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be    //*[@id="input_comp-lt33fcq41"]    aria-invalid    true

Required fields Last Name
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    # Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be        //*[@id="input_comp-lt33fcs1"]    aria-invalid    true

Required fields Phone Number
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    # Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be        //*[@id="input_comp-lt33fcsi1"]    aria-invalid    true

Required fields Email
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    # Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be        //*[@id="input_comp-lt33fcsf1"]    aria-invalid    true

Required fields Number of adults
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    # Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be        //*[@id="collection_comp-lt33fcsl1"]    aria-invalid    true

Not Required fields Have pet or not
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    # Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Wait Until Page Contains    Verification    timeout=5s

Not Required fields Note
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    # Comment Input    ${COMMENT}
    Click Accept Button
    Click Submit Button
    Wait Until Page Contains    Verification    timeout=5s

Required Click Accept Button  
    [Tags]    Open Browser
    Open Browser from keyword    ${URL}
    Maximize Browser Window
    First Name Input    ${FIRST_NAME}
    Last Name Input    ${LAST_NAME}
    Phone Number Input    ${PHONE_NUMBER}
    Email Input    ${EMAIL}
    Number of adults Input    ${NUMBER_OF_ADULTS}
    Have pet or not    ${PET}
    Comment Input    ${COMMENT}
    # Click Accept Button
    Click Submit Button
    Element Attribute Value Should Be        //*[@id="comp-ltubl84u"]/input    aria-invalid    false
