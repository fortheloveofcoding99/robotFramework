*** Settings ***

Documentation   Add all items to the cart
Library     SeleniumLibrary
Library     ../CustomLibraries/ShoppingList.py

*** Variables ***

@{list of products}     Faded Short Sleeve T-shirts Blouse  Printed Summer Dress

*** Test Cases ***
All all items to the cart from the My store URL
    Open the my store URL
    Check the items on the page
    Add all the items to the cart      @{list of products}

*** Keywords ***
Open the my store URL
    Create Webdriver    Chrome  executable_path=/Users/befor/New folder/chromedriver
    Go To   http://automationpractice.com/index.php
    MAXIMIZE BROWSER WINDOW

Check the items on the page

    ${text1}=    get text    xpath:(//h5[@itemprop='name'])[1]
    ${text2}=    get text    xpath:(//h5[@itemprop='name'])[2]
    ${text3}=    get text    xpath:(//h5[@itemprop='name'])[3]
    ${text4}=    get text    xpath:(//h5[@itemprop='name'])[4]
    ${text5}=    get text    xpath:(//h5[@itemprop='name'])[5]
    ${text6}=    get text    xpath:(//h5[@itemprop='name'])[6]
    ${text7}=    get text    xpath:(//h5[@itemprop='name'])[7]

    log to console  ${text1}
    log to console  ${text2}
    log to console  ${text3}
    log to console  ${text4}
    log to console  ${text5}
    log to console  ${text6}
    log to console  ${text7}


