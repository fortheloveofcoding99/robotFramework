*** Settings ***

Documentation   A resource file with reusable keywords and variables.

...             The system specific keywords created here form our own
...             domain specific language. Utilizing keywords imported from Selenium library.

Library         SeleniumLibrary
Test Setup      Open the Url
Test Teardown   Close Browser session
Resource        resource.robot

*** Test Cases ***
Checking the check boxes
    Navigate to checkboxes
    Expand the home button
    Select the command checkbox
    Capture the message after the element is selected

*** Keywords ***

Navigate to checkboxes
    click element   id:item-1

Expand the home button
    click element   css:.rct-option-expand-all

Select the command checkbox
    click element     xpath://span[contains(text(),'Commands')]

Capture the message after the element is selected
    wait until element is visible   id:result
    ${result} =     get text   id:result
    Log to console  ${result}