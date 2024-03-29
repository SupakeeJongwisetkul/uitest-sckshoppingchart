*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser   ${url}    chrome
Resource    resource_success.robot

*** Test Cases ***
    เลือกสินค้า    
    ตรวจสอบข้อมูลสินค้า     PlayStation5       ฿21,990.00       219
    เพิ่มสินค้าลงตะกล้า
    ตรวจสอบข้อมูลสินค้าในตะกล้า     PlayStation5       ฿21,990.00       219
    ใช้แต้มเป็นส่วนลดราคาสินค้า       500
    ตรวจสอบสรุปรายการสั่งซื้อ
    ตรวจสอบที่อยู่ในการจัดส่ง
    ชำระค่าสินค้า
    ชำระค่าสินค้าสำเร็จ