*** Settings ***
Library      SeleniumLibrary

Resource    ./pages/base.robot

*** Keywords ***
Content Should Be
    [Arguments]  ${content}
    ${site_content} =   Get Text  xpath=//*[@id="item_1_title_link"]/div
    Should Be Equal  ${content}  ${site_content}

Go To Checkout Page
    base.Click  id=checkout