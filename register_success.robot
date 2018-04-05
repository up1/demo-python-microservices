*** Settings ***
Library   Selenium2Library

*** Testcases ***
Register success
  เข้า web
  เข้าหน้า register
  กรอกข้อมูล
  submit
  ตรวจสอบผล

*** Keywords ***
ตรวจสอบผล
  Wait Until Page Contains    กรุณาตรวจสอบอีเมล์ที่ลงทะเบียน

submit
  Click Element   xpath=//div[5]/div/button

กรอกข้อมูล
  Input Text  id=penname  up1
  Input Text  id=email  somkiat.p@gmail.com
  Input Text  id=password_1  P@ssw0rd4122
  Input Text  id=password_2  P@ssw0rd4122

เข้าหน้า register
  Click Element    id=dLabel01
  Click Element    xpath=//*[@id="container-header"]/div/div[5]/div/div[3]/div/div[2]/div/ul/li[3]/a/div

เข้า web
  Open Browser    https://www.airmosphere.net/   browser=chrome
