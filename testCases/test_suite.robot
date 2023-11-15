

*** Settings ***
Library    Browser    strict=False
Resource    ../tests/keyword_test/title_validation.robot
Resource    ../tests/keyword_test/all tabs/trending.robot
Documentation    This is a test suite for Amazon project

suite setup    Open Browser and Validate Title
suite teardown    Close Browser

*** Test Cases ***
TC001
    [Tags]    TC_001    Clothing and Accessories
    [Documentation]    This is a test case to validate items in Clothing and Accessories
    [Timeout]    1 minute

    Get Items in Amazon New Releases under Clothing and Accessories
    #where did this come from

#replace the below with newly created keyword driven test case
TC002
    [Tags]    TC_002    Computers and Acccessories
    [Documentation]    This is a test case to validate items in Computers and Accessories

    Get Items in Amazon New Releases under Computers and Accessories

#TC003
#    [Tags]    TC_003    Log into amazon.in
#    [Documentation]    This is a test case to validate login credentials
#
#    Login with user name and Password
#
#
