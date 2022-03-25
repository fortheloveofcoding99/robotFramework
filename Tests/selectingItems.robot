*** Settings ***

Documentation   Fill in the form
Library     SeleniumLibrary
Test Setup  Open the sauce demo Url
#Test Teardown   Close Browser session
Resource    resource.robot

*** Test Cases ***
Selecting Cart items dynamically
    Enter the valid password    ${validuser}  ${pass}
    Select the item     Test.allTheThings() T-Shirt (Red)


*** Keywords ***
Enter the valid password
    clear element text  id:user-name
    clear element text  id:password
    [arguments]     ${name}     ${passw}
    INPUT TEXT      id:user-name    ${name}
    input password  id:password     ${passw}
    click button    id:login-button


Select the item
    [arguments]     ${itemName}
    ${elements} =   get webelements     css:.inventory_item_name
    ${index} =      Set Variable    1
    FOR     ${element}  IN      @{elements}
         Exit For Loop If   '${itemName}' == '${element.text}'
         ${index} =     Evaluate    ${index} + 1
    END

    click button    xpath:(//button[@class='btn btn_primary btn_small btn_inventory'])[${index}]