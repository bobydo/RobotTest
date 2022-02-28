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
    #def set_breakpoint(self):
    #Set Breakpoint
    #Input Text    name:q  ${query} # will work
    Input Text    name:inputfield  ${query} # will failure
    Submit Form    //form[@id="sb_form"]
    Pause ON FAILURE

*** Test Cases ***
Search Bing
    Open Bing
    Perform Search    Formulated Automation Github
