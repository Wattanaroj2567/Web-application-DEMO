<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product" %>
<!DOCTYPE html>
<html>
    <body>
         <!-- get session object movie -->
    <% 
        try {
            Product product = (Product) session.getAttribute("product");
            if (product != null) {
        %>
                <h4>สินค้าที่เพิ่มได้แล้ว</h4>
                ชื่อ: <%= product.getName() %><br/>
                ประเภท: <%= product.getType() %><br/>
                จำนวน: <%= product.getQuantity() %><br/>
                ราคา: <%= product.getPrice() %><br/> 
                <a href="updateProduct.jsp">แก้ไขข้อมูลสินค้า</a>
        <% 
            } else {
        %>
                <p>ไม่พบข้อมูลสินค้า</p>
        <% 
            }
        } catch (Exception e) {
            out.println("เกิดข้อผิดพลาดในการแสดงข้อมูล: " + e.getMessage());
        }
        %>
    </body>
</html>
