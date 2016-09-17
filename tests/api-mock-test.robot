*** Settings ***
Documentation  This is basic info about test suite
Library  Selenium2Library
Library  HttpLibrary.HTT

*** Variables ***

*** Test Cases ***
Landing Page
    [Documentation]  This is basic info about test case
    [Tags]  Smoke
    open browser  www.google.com  phantomjs
    close browser