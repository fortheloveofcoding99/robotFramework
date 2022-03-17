*** Settings ***

Documentation   Fill in the form
Library     SeleniumLibrary

*** Test Cases ***
Validate form fill in
    Open the Url
    Fill in the required info
    Click submit
    Verify the form is submitted

*** Keywords ***
Open the Url
    Create Webdriver    Chrome  executable_path=/Users/befor/New folder/chromedriver
    Go To   https://demoqa.com/text-box
    MAXIMIZE BROWSER WINDOW

Fill in the required info

    input text      id:userName         Joe Biden
    input text      id:userEmail        Joe@att.net
    input text      id:currentAddress   211 Madison Ave NY
    execute javascript  window.scrollTo(0,400)
    scroll element into view         id:submit


Click submit
    click button     id:submit

Verify the form is submitted
    ELEMENT SHOULD BE VISIBLE   xpath://body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[6]/div[1]
    ${result} =     get text    xpath://body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[6]/div[1]
    Log to Console  ${result}


