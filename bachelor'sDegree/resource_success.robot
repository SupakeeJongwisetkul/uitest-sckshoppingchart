*** Variables ***
${url}   https://www.google.com/

*** Keywords ***
เลือกสินค้า
    Click Element        id=Select-Select-productId

ตรวจสอบข้อมูลสินค้า 
    [Arguments]    ${productName}    ${productPrice}    ${productPoine}   
    Wait Until Element Contains    id=product_Id    ${productName}
    Element Text Should Be       id=product_Id     ${productName}
    Element Text Should Be       id=price_Id     ${productPrice}
    Element Text Should Be       id=point_Id     ${productPoine}
เพิ่มสินค้าลงตะกล้า
    Click Element        id=AddToShoppingCart
ตรวจสอบข้อมูลสินค้าในตะกล้า
    [Arguments]    ${productName}    ${productPrice}    ${productPoine}   
    Wait Until Element Contains    id=product_Id    ${productName}
    Element Text Should Be       id=product_Id     ${productName}
    Element Text Should Be       id=price_Id     ${productPrice}
    Element Text Should Be       id=point_Id     ${productPoine}

ใช้แต้มเป็นส่วนลดราคาสินค้า
    [Arguments]    ${usepoint}
    Input Text      id=point_Id     ${usepoint}
ตรวจสอบสรุปรายการสั่งซื้อ
    [Arguments]    ${productName}    ${pointdiscount}    ${productTotalPoine}   
    Wait Until Element Contains    id=product_Id    ${productName}
    Element Text Should Be       id=product_Id     ${productName}
    Element Text Should Be       id=pointdiscountNumber_Id     ${pointdiscount}
    Element Text Should Be       id=priceNumber_Id     ${productTotalPoine}
    Element Text Should Be       id=priceNumber_Id     ${productPoine}
ตรวจสอบที่อยู่ในการจัดส่ง
    [Arguments]    ${country_Id}    ${province_Id}    ${district_Id}   ${Subdistrict_Id}    ${houseNumber_Id}   ${postCode_Id}
    
    Input Text       id=country_Id     ${country_Id}
    Input Text       id=province_Id     ${province_Id}
    Input Text     id=district_Id     ${district_Id}
    Input Text      id=Subdistrict_Id     ${Subdistrict_Id}
    Input Text      id=houseNumber_Id     ${houseNumber_Id}
    Input Text     id=postCode_Id     ${postCode_Id}

ชำระค่าสินค้า
    [Arguments]    ${credit_Id}    ${cvv_Id}    ${endTime_Id}   
    Input Text      id=credit_Id     ${credit_Id}
    Input Text     id=cvv_Id     ${cvv_Id}
    Input Text       id=endTime_Id     ${endTime_Id}
    

ชำระค่าสินค้าสำเร็จ
    [Arguments]    ${priceNumber_Id}    ${pointGetNumber_Id}   
    Click Element        id=confirm
    Wait Until Element Contains    id=priceNumber_Id    ${priceNumber_Id}
    Element Text Should Be       id=priceNumber_Id     ${priceNumber_Id}
    Element Text Should Be       id=priceNumber_Id     ${pointGetNumber_Id}

