*** Settings ***
Documentation     This is basic info about test suite
Library           HttpLibrary.HTTP

*** Variables ***
${API_ENDPOINT}    http://private-dae76-derekchudley.apiary-mock.com

*** Test Cases ***
List Question Request Should Return Successful
    Get Question list
    Response Status Code Should Equal    200

List Question Requset Should Return Correct Number Of Items
    Get Question list
    ${json} =    Parse Response Body To Json
    Length Should Be    ${json}    1

*** Keywords ***
Get Question list
    GET    ${API_ENDPOINT}/questions

Parse Response Body To Json
    ${result} =    Get Response Body
    ${json} =    Parse Json    ${result}
    [Return]    ${json}
