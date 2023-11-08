
*** Settings ***
Documentation     Keywords for login page.
Library    Browser    strict=False
Library    ../config/decode.py


*** Keywords ***
Title Validation
    [Arguments]    ${URL}   ${title}=Amazon
    [Documentation]    This Keyword is to validate the title of the page.

    New Browser    browser=chromium    headless=True
    New Context    viewport={'width': 2880, 'height': 1800}
    New Page    ${URL}
    ${t_Title} =    Get Title    *=    ${title}    message="Title is not matching"
    Get User Name And Password

Get user name and Password
    [Documentation]    Get username and Password

    ${a}      create list     username    password
    Set Log Level    NONE
    ${r_username}=      getParameter      ${a}[0]
    ${r_password}=      getParameter      ${a}[1]
    Set Log Level    INFO
    Log     ${r_username} ${r_password}
    Log To Console    ${r_username}   ${r_password}
    [Return]   ${r_username}   ${r_password}

    ##Pass username and password to amazon login page
    ##Keyword to pass username and password to amazon login page and try to sign in

Login with user name and Password
    [Arguments]    ${username}   ${password}
    Wait for Elements State    ${login.signin}    visible    5s
    Click    ${login.signin}
    Sleep    10s
    Fill Text    ${login.email}    ${username}
    Sleep    10s
    Wait For Elements State    ${login.continue}    visible    5s
    Click    ${login.continue}









