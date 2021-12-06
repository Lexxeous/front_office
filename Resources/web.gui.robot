########################################################
# Author: Jonathan Alexander Gibson
# Date: November 30, 2021
# Execution Command: N/A
# Credit: Udemy Course - https://www.udemy.com/course/robot-framework-level-1/
########################################################

*** Settings ***
Resource  ./PO/about.robot
Resource  ./PO/contact.robot
Resource  ./PO/landing-page.robot
Resource  ./PO/portfolio.robot
Resource  ./PO/services.robot
Resource  ./PO/team.robot
Resource  ./PO/top-nav.robot

*** Variables ***


*** Keywords ***
Navigate To Website
    [Arguments]  ${url}
    landing-page.Load  ${url}
    landing-page.Verify Page Loaded

Go To "Team" Page
    top-nav.Click "Team" Link
    team.Verify Page Loaded

Validate "Team" Page
    team.Validate Page Content