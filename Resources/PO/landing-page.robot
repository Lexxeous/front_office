########################################################
# Author: Jonathan Alexander Gibson
# Date: November 30, 2021
# Execution Command: N/A
# Credit: Udemy Course - https://www.udemy.com/course/robot-framework-level-1/
########################################################

*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${LANDING_PAGE_WELCOME_MSG_1} =  Welcome To Our Studio!
${LANDING_PAGE_WELCOME_MSG_2} =  It's Nice To Meet You

*** Keywords ***
Load
    [Arguments]  ${url}
    Go To  ${url}

Verify Page Loaded
    Wait Until Page Contains  ${LANDING_PAGE_WELCOME_MSG_1}
    Wait Until Page Contains  ${LANDING_PAGE_WELCOME_MSG_2}