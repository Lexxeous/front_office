########################################################
# Author: Jonathan Alexander Gibson
# Date: November 30, 2021
# Execution Command: N/A
# Credit: Udemy Course - https://www.udemy.com/course/robot-framework-level-1/
########################################################

*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${TEAM_HEADER_RAW_TEXT} =  Our Amazing Team  # Raw team header text loaded in HTML document.
# ${TEAM_HEADER_ELEMENT_TEXT} =  OUR AMAZING TEAM  # Modified team header element text rendered on page.
${TEAM_HEADER_ELEMENT} =  xpath=//*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${TEAM_HEADER_ELEMENT}

Validate Page Content
    # The following test fails with Chrome but passes with Edge:
    # Element Text Should Be  ${TEAM_HEADER_ELEMENT}  ${TEAM_HEADER_RAW_TEXT}

    # Alternative test:
    ${element_text} =  Get Text  ${TEAM_HEADER_ELEMENT}
    Should Be Equal As Strings  ${element_text}  ${TEAM_HEADER_RAW_TEXT}  ignore_case=true