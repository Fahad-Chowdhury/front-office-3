*** Settings ***
Documentation  Tests the basic functionalities of Front Office website
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  ie
${URL} =  https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Checks if "Team" page is accessible
    [Tags]  team
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  Validates "Team" page content
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
