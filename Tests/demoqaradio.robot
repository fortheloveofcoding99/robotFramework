
*** Settings ***

Documentation   Landing on the home page and logging in to basic Auth.
Library         SeleniumLibrary

Test Setup      Open the demoqa elements page
Resource        ../pageObject/landingPage.robot
Resource        ../pageObject/resource.robot
Test Teardown   Close Browser session

*** Test Cases ***
Selecting the radio button
    CLicking the radio button

*** Keywords ***

CLicking the radio button
    click element       xpath://div[@class='col-12 mt-4 col-md-6']
    ${element}          get text    //div[@class='col-12 mt-4 col-md-6']
    Log to console      ${element}
    execute javascript  window.scrollTo(0,500)
    click element       xpath://span[contains(text(),'Radio Button')]
    sleep               2s
    click element       xpath:(//label[@class='custom-control-label'])[1]




