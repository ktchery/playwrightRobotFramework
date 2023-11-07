
*** Settings ***
Documentation     Keywords for Trending Page.
Library    Browser    strict=False
Library    Collections
Resource    ../../locators/locators_xpath.robot
Resource    ../../testCases/testdata/all_tab/trending_data.robot



*** Keywords ***
Validate Hot New Releases
    [Documentation]    This keyword is to verify hot new releases

    Click    ${trending.all_nav_bar}
    ${t_status} =    Run Keyword and Return Status    Wait For Elements State    ${trending.new_release_nav_bar}    visible    timeout=3s
    Run Keyword if    ${t_status} == False    Click    ${trending.all_nav_bar}
    Click    ${trending.new_release_nav_bar}
    ${r_title} =    Get Text    ${trending.title_text}
    Log To Console    "Title of Page "${r_title}
    Should Contain    ${r_title}    Hot New Releases

    [Return]   ${r_title}

Get New Releases item Clothing and Accessories
    [Documentation]    This keyword is to get the office prodcuts list items
    [Arguments]    ${title}

    ${t_items_Count} =   Get Element Count    ${trending.cloth_and_access_items}
    @{r_new_items} =    Create List
    FOR    ${i}    IN RANGE    1    ${t_items_Count}+1
        ${t_item} =    Get Text    xpath=//h2[text()="Hot New Releases in Clothing & Accessories"]//parent::div//parent::div//following-sibling::div[@class="a-row a-carousel-controls a-carousel-row a-carousel-has-buttons"]//li[${i}]//span/div
        Log To Console    ${t_item}
        Append To List    ${r_new_items}    ${t_item}
    END
    Log To Console    "Items of page "${title}" are the following " ${r_new_items}

    [Return]   ${r_new_items}

Get New Releases item Computers and Accessories
    [Documentation]    This keyword is to get the computer and accessories list items
    [Arguments]    ${title}

    ${t_items_Count} =   Get Element Count    ${trending.comp_and_access_items}
    @{r_new_items} =    Create List
    FOR    ${i}    IN RANGE    1    ${t_items_Count}+1
        ${t_item} =    Get Text    xpath=//h2[text()="Hot New Releases in Computers & Accessories"]//parent::div//parent::div//following-sibling::div[@class="a-row a-carousel-controls a-carousel-row a-carousel-has-buttons"]//li[${i}]//span/div
        Log To Console    ${t_item}
        Append To List    ${r_new_items}    ${t_item}
    END
    Log To Console    "Items of page "${title}" are the following " ${r_new_items}

    [Return]   ${r_new_items}


Validate presence of item
    [Documentation]    This keyword is to verify the presence of item
    [Arguments]    ${new_items}

    FOR     ${t_item}    IN   @{new_items}
        log   ${t_item}
        ${t_status}=    Run Keyword and Return Status    Should Contain    ${t_item}    ${items}
        Run Keyword if    ${t_status} == True   Click    //div[text()="${t_item}"]
        Exit For loop if    ${t_status} == True
    END
    Wait for Elements State    ${trending.add_to_cart_btn}    visible    5s
    Click    ${trending.add_to_cart_btn}
    #cryptography
         #fernet
         #yaml

         
         #logging file in robot
         #negativity
         #Hvae a file in C Drive
         #user/Documents/sample.txt--> this is not needed
                   #pathlib in python





