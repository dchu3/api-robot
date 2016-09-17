*** Settings ***
Documentation  This is basic info about test suite
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
Landing Page
    [Documentation]  This is basic info about test case
    [Tags]  Smoke
    open browser  www.allstate.com  phantomjs
    close browser