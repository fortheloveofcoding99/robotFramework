*** Settings ***

Documentation   Fill in the form
Library     SeleniumLibrary
Library     Collections
Test Setup  Open the sauce demo Url
Test Teardown   Close Browser session
Resource    resource.robot

*** Test Cases ***
Valid and invalid username and password combination
    Enter the invalid password  ${invaliduser}  ${pass}
    capture the message
    Enter the valid password    ${validuser}  ${pass}
    verify if logged in
    Verify the items on the home page

*** Keywords ***
Enter the invalid password
    [arguments]     ${name}     ${passw}
    INPUT TEXT      id:user-name    ${name}
    input password  id:password     ${passw}
    click button    id:login-button

capture the message
    wait until element is visible       css:.error

Enter the valid password
    clear element text  id:user-name
    clear element text  id:password
    [arguments]     ${name}     ${passw}
    INPUT TEXT      id:user-name    ${name}
    input password  id:password     ${passw}
    click button    id:login-button

verify if logged in
    wait until element is visible   xpath://span[contains(text(),'Products')]

Verify the items on the home page
    @{expectedList} =  Create List  Sauce Labs Backpack     Sauce Labs Bike Light   Sauce Labs Bolt T-Shirt     Sauce Labs Fleece Jacket    Sauce Labs Onesie   Test.allTheThings() T-Shirt (Red)
    ${actualList} =    get webelements     css:.inventory_item_name
    @{talllyList} =     Create List

    FOR     ${listtext}     IN      @{actualList}
           Log       ${listtext.text}
           append to list   ${talllyList}  ${listtext.text}

    END

    lists should be equal   ${talllyList}   ${expectedList}



