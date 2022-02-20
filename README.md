# Testing UI with Robot Framework

[Swag Labs](https://www.saucedemo.com/) was used as the website.

## Project Structure

  - base.robot
  - loginpage.robot
  - homepage.robot      
  - productpage.robot
  - cartpage.robot
  - checkoutpage.robot
  - swanglabstest.robot


**Required Robot Framework Libraries**

- Selenium Library
- Faker Library


**Test Steps:**
  - Open Browser and Webpage 
  - Set Username 
  - Set Password 
  - Click Login Button
  - Check Content
  - Select 3'rd Product
  - Check Content
  - Add Product to Cart
  - Go to Cart Page
  - Click Checkout Button
  - Check Content
  - Set Firstname   (created using Faker Library)
  - Set Lastname    (created using Faker Library)
  - Set Postal Code (created using Faker Library)
  - Click Continue Button
  - Check Content
  - Click Finish Button  
  - Check Content
  - Click Go To Back Button
  - Check Content
  - Logout              
  - Check Content
  - Close Browser


**Report**

![Log](report.png)