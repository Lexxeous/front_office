########################################################
# Author: Jonathan Alexander Gibson
# Date: November 22, 2021
# Execution Command: python -m robot -d Results/Main/ Tests/main.robot
# Credit: Udemy Course - https://www.udemy.com/course/robot-framework-level-1/
########################################################

*** Settings ***
Documentation  Main suite for testing the dummy "Front Office" web app from https://robotframeworktutorial.com/front-office

# Import resources
Resource  ../Resources/web.gui.robot
Resource  ../Resources/common.web.robot
Resource  ../Resources/common.robot

# Define setup and tear-down
Suite Setup  common.Init Suite
Test Setup  common.web.Begin Web Test  ${BROWSER}
Test Teardown  common.web.End Web Test
Suite Teardown  common.Clean Suite

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.robotframeworktutorial.com/front-office


*** Test Cases ***

Ensure the "Team" page loads properly
    [Documentation]  Make sure that the "Team" link in the top nav works as expected.
    [Tags]  Team

    Log  I am doing test case 1

    web.gui.Navigate To Website  ${URL}
    web.gui.Go To "Team" Page
    web.gui.Validate "Team" Page
    common.Pause