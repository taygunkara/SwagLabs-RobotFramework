***Settings***
Library     SeleniumLibrary

***Variables***
${browser}      chrome
${url}      https://www.saucedemo.com/
${timeout}      15 seconds

***Keywords***
Create Browser
    Open Browser    about:blank     ${browser}
    Set Selenium Timeout    ${timeout}
    Maximize Browser Window

Close Browser 
    Close All Browsers 

Click
    [Arguments]     ${SELECTOR}
    Wait Until Page Contains Element    ${SELECTOR}
    Click Element   ${SELECTOR}



