*** Settings ***
Documentation   Opens the browser and searches Bing; very basic dialog to show the test flow
Library         Selenium2Library
Library         OperatingSystem
Library         Dialogs
Suite Teardown  Teardown Actions

*** Variables ***
${BING_URL}    https://bing.com
*** Keywords ***
Teardown Actions
    ${debug}=   Get Environment Variable    ROBOT_DEBUG     FALSE
    Run Keyword If  '${debug}' == 'TRUE' and '${SUITE_STATUS}' == 'FAIL'    Pause For Debug
    Close All Browsers

*** Keywords ***
#Pause For Debug shows dialog
Pause For Debug
    Pause Execution    Paused execution due to failure, click OK to continue teardown

*** Keywords ***
Perform Search
    #Formulated Automation Github passed to ${query}
    [Arguments]     ${query}
    Wait Until Element Is Visible   name:q
    Input Text  name:q  ${query}  # Will Work, input name is correct
    # Input Text  name:search_box  ${query}   # Will Fail, search_box is incorrect
    Submit Form  //form[@id="sb_form"]

*** Test Cases ***
Search Bing
    Open Browser  ${BING_URL}
    Perform Search    Formulated Automation Github
