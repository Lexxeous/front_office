########################################################
# Author: Jonathan Alexander Gibson
# Date: November 30, 2021
# Execution Command: N/A
# Credit: Udemy Course - https://www.udemy.com/course/robot-framework-level-1/
########################################################

*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${TOP_NAV_TEAM_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Click "Team" Link
    Click Link  ${TOP_NAV_TEAM_LINK}