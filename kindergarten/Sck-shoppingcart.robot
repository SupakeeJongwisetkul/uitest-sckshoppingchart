*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ซื้อPlaystation5ใช้แต้มแล้วได้แต้มคืน
    Open Browser    url=https://www.google.com/   browser=chrome

    Click Element        id=Select-Select-productId

    Wait Until Element Contains    id=product_Id    PlayStation5
    Element Text Should Be       id=product_Id     PlayStation5
    Element Text Should Be       id=price_Id     ฿21,990.00
    Element Text Should Be       id=point_Id     219

    Click Element        id=AddToShoppingCart


    Wait Until Element Contains    id=product_Id    PlayStation5
    Element Text Should Be       id=product_Id     PlayStation5
    Element Text Should Be       id=price_Id     ฿21,990.00
    Element Text Should Be       id=point_Id     219

    Input Text      id=point_Id     500

    Wait Until Element Contains    id=product_Id    PlayStation5
    Element Text Should Be       id=product_Id     PlayStation5
    Element Text Should Be       id=pointdiscountNumber_Id     500
    Element Text Should Be       id=priceNumber_Id     50
    Element Text Should Be       id=priceNumber_Id     ฿21,540.00

    Wait Until Element Contains    id=country_Id    ไทย
    Element Text Should Be       id=country_Id     ไทย
    Element Text Should Be       id=province_Id     นนทบุรีย์
    Element Text Should Be       id=district_Id     บางใหญ่ 
    Element Text Should Be       id=Subdistrict_Id     บางใหญ่ 
    Element Text Should Be       id=houseNumber_Id     21/26
    Element Text Should Be       id=postCode_Id     11140

    Element Text Should Be       id=credit_Id     4242-4242-4242-4242
    Element Text Should Be       id=cvv_Id     546
    Element Text Should Be       id=endTime_Id     02/27
    
    Click Element        id=confirm
    Wait Until Element Contains    id=priceNumber_Id    ฿21,540.00
    Element Text Should Be       id=priceNumber_Id     ฿21,540.00
    Element Text Should Be       id=priceNumber_Id     215