
*** Settings ***
Library    Browser    strict=False
Resource    ../../keywords/login_page.robot

*** Keywords ***
Open Browser and Validate Title
    [Documentation]    This is to Validate the title of the page

    Title Validation    https://www.amazon.in/


