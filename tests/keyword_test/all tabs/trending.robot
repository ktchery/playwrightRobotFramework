
*** Settings ***
Library    Browser    strict=False
Resource    ../../../keywords/all tabs/trending_page.robot
#Exlpain the function of this file

*** Keywords ***
Get Items in Amazon New Releases under Clothing and Accessories
    [Documentation]    Validate the correct title and items of page Clothing and Accessories

    ${t_title} =    Validate Hot New Releases
    ${t_items} =    Get New Releases item Clothing and Accessories    ${t_title}
    Validate presence of item   ${t_items}


Get Items in Amazon New Releases under Computers and Accessories
    [Documentation]    Validate the correct title and items of page Computers and Accessories

    ${t_title} =    Validate Hot New Releases
    ${t_items} =    Get New Releases item Computers and Accessories    ${t_title}

