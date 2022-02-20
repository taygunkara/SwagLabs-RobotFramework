*** Settings ***
Library      SeleniumLibrary
Library      FakerLibrary

Resource    ./pages/base.robot

*** Keywords ***
Set Firstname
    Wait Until Page Contains Element    id=first-name
    ${FirstName} =  FakerLibrary.First Name
    Input Text      id=first-name   ${FirstName}

Set Lastname
    ${LastName} =  FakerLibrary.Last Name
    Input Text      id=last-name    ${LastName}

Set Postal Code
    ${PostalCode} =  FakerLibrary.Postalcode
    Input Text      id=postal-code  ${PostalCode}
    
Click Continue Button
    base.Click  id=continue

Content Should Be
    Wait Until Page Contains Element    xpath=//*[@id="header_container"]/div[2]/span
    [Arguments]  ${content}
    ${site_content} =   Get Text  xpath=//*[@id="header_container"]/div[2]/span
    Should Be Equal  ${content}  ${site_content}

Click Finish Button
    base.Click  id=finish

Last Content Should Be
    Wait Until Page Contains Element    xpath=//*[@id="checkout_complete_container"]/h2
    [Arguments]  ${content}
    ${site_content} =   Get Text  xpath=//*[@id="checkout_complete_container"]/h2
    Should Be Equal  ${content}  ${site_content}

Go To Back
    base.Click  id=back-to-products
