*** Settings ***
Library      SeleniumLibrary

Resource    ./pages/base.robot


*** Keywords ***
Content Should Be
    [Arguments]  ${content}
    ${site_content} =  Get Text  xpath=//*[@id="header_container"]/div[2]/span
    Should Be Equal  ${content}  ${site_content}

Select Item
    base.Click  xpath=//*[@id="item_1_title_link"]/div
    
Logout
    base.Click  id=react-burger-menu-btn
    Wait Until Element Is Visible   id=logout_sidebar_link
    base.Click  id=logout_sidebar_link
