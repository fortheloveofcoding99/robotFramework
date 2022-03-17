*** Settings ***

Documentation   A resource file with reusable keywords and variables.

...             The system specific keywords created here form our own
...             domain specific language. Utilizing keywords imported from Selenium library.

Library         SeleniumLibrary


*** Variables ***
${url}      https://demoqa.com/elements
${sauceurl}     https://www.saucedemo.com/
${validuser}    standard_user
${invaliduser}  locked_out_users
${pass}         secret_sauce

*** Keywords ***
Open the Url
    Create Webdriver    Chrome  executable_path=/Users/befor/New folder/chromedriver
    Go To       ${url}
    MAXIMIZE BROWSER WINDOW

Open the sauce demo Url
    Create Webdriver    Chrome  executable_path=/Users/befor/New folder/chromedriver
    Go To   ${sauceurl}
    MAXIMIZE BROWSER WINDOW


Close Browser session
    close browser