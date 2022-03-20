*** Settings ***

Documentation   A resource file with reusable keywords and variables.

...             The system specific keywords created here form our own
...             domain specific language. Utilizing keywords imported from Selenium library.

Library         SeleniumLibrary
Test Setup      Open the Url
Test Teardown   Close Browser session
Resource        resource.robot

*** Test Cases ***
Validate form fill in
    Navigate to forms
    Fill in the required info
    Click submit
    Verify the form is submitted

*** Keywords ***

Navigate to forms
    click element   id:item-0

Fill in the required info

    input text      id:userName         Joe Biden
    input text      id:userEmail        Joe@att.net
    input text      id:currentAddress   211 Madison Ave NY USA
    execute javascript  window.scrollTo(0,400)
    scroll element into view         id:submit


Click submit
    click button     id:submit

Verify the form is submitted
    ELEMENT SHOULD BE VISIBLE   xpath://body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[6]/div[1]
    ${result} =     get text    xpath://body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[6]/div[1]
    Log to Console  ${result}




