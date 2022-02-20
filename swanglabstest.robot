*** Settings ***
Resource    ./pages/base.robot 
Resource    ./pages/homepage.robot
Resource    ./pages/loginpage.robot
Resource    ./pages/productpage.robot
Resource    ./pages/cartpage.robot
Resource    ./pages/checkoutpage.robot

Test Setup      base.Create Browser
Test Teardown   base.Close Browser


*** Test Cases ***
Case 1 
    [Documentation]     Login, Buy Product and Logout
    loginpage.Go To Login Page
    loginpage.Set Username
    loginpage.Set Password
    loginpage.Click Login Button
    homepage.Content Should Be     PRODUCTS
    homepage.Select Item
    productpage.Content Should Be  Sauce Labs Bolt T-Shirt
    productpage.Add Product To Cart
    productpage.Go To Cart Page
    cartpage.Content Should Be      Sauce Labs Bolt T-Shirt
    cartpage.Go To Checkout Page
    checkoutpage.Set Firstname
    checkoutpage.Set Lastname
    checkoutpage.Set Postal Code 
    checkoutpage.Click Continue Button
    checkoutpage.Content Should Be  CHECKOUT: OVERVIEW
    checkoutpage.Click Finish Button
    checkoutpage.Last Content Should Be  THANK YOU FOR YOUR ORDER
    checkoutpage.Go To Back
    homepage.Content Should Be  PRODUCTS
    homepage.Logout
    loginpage.Content Should Be  Accepted usernames are:
