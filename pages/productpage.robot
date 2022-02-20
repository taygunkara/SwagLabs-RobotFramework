*** Settings ***
Library      SeleniumLibrary

Resource    ./pages/base.robot

*** Keywords ***
Content Should Be
    [Arguments]  ${content}
    ${site_content} =   Get Text  xpath=//*[@id="inventory_item_container"]/div/div/div[2]/div[1]
    Should Be Equal  ${content}  ${site_content}

Add Product To Cart
    base.Click  id=add-to-cart-sauce-labs-bolt-t-shirt

Go To Cart Page  
    base.Click  id=shopping_cart_container
    
