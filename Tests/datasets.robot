*** Settings ***

Documentation   incorrect logins
Library     SeleniumLibrary
Test Template   Validate invalid logins
Test Teardown   Close Browser


*** Test Cases ***  username    password
Invalid username    xyz     delta
Invalid password    pqr     alpha
Invalid user        lmn     phi
Valid password      abcdef  Tools@123

*** Keywords ***
Validate invalid logins
    [Arguments]     ${username}     ${password}
    Open the Url
    Enter the userid and password   ${username}     ${password}




Open the Url
    Create Webdriver    Chrome  executable_path=/Users/befor/New folder/chromedriver
    Go To       https://demoqa.com/login
    MAXIMIZE BROWSER WINDOW



Enter the userid and password
    [arguments]     ${username}     ${password}
    INPUT TEXT      id:userName    ${username}
    input password  id:password     ${password}
    execute javascript  window.scrollTo(0,400)
    click button    id:login
