*** Settings ***
Documentation  This is basic info about test suite
Library  Selenium2Library
Library  HttpLibrary.HTTP

*** Variables ***
${API_ENDPOINT}	https://private-dae76-derekchudley.apiary-mock.com

*** Test Cases ***
List Question Request Should Return Successful
	GET	${API_ENDPOINT}/questions
	Response Status Code Should Equal	200