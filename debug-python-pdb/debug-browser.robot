*** Settings ***
Documentation   Opens the browser and searches Bing
Library         Selenium2Library
Library         DebugLibrary.py
Suite Teardown  Teardown Actions

*** Variables ***
${BING_URL}    https://bing.com

*** Keywords ***
Teardown Actions
    Pause On Failure
    Close All Browsers

*** Keywords ***
Open Bing
    Open Browser    ${BING_URL}

*** Keywords ***
Perform Search
    [Arguments]    ${query}
    Wait Until Element Is Visible    name:q
    Set Breakpoint
    Input Text    name:q  ${query}
    Submit Form    //form[@id="sb_form"]
    Pause For Debug

*** Test Cases ***
Search Bing
    Open Bing
    Perform Search    Formulated Automation Github
