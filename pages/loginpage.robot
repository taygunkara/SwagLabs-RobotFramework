*** Settings ***
Library      SeleniumLibrary

Resource    ./pages/base.robot

*** Keywords ***
Go To Login Page
    Go To   ${url}

Set Username
    Wait Until Page Contains Element    id=user-name
    Input Text      id=user-name    standard_user
    
Set Password
    Wait Until Page Contains Element    id=password
    Input Text      id=password    secret_sauce

Click Login Button
     base.Click  id=login-button

Content Should Be
    [Arguments]  ${content}
    ${site_content} =  Get Text  xpath=//*[@id="login_credentials"]/h4
    Should Be Equal  ${content}  ${site_content}
    