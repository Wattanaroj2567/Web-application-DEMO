<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Product" %>
<!DOCTYPE html>
<html>
    <body>
        <h2>แก้ไขสินค้า</h2>

        <%

            Product product = (Product) session.getAttribute("product");
            out.println("ข้อมูลเดิม: " + product.getName() + ", " + product.getType());
            out.println(product.getQuantity() + "," + product.getPrice() + "<br/>");

        %>
        <form action="AddNewProductServlet">
            ชื่อสินค้า : <input type="text" name="productName"><br/>
            ประเภท : <select name="productType" id="productType">
                <option value="อาหาร">อาหาร</option>
                <option value="เครื่องดื่ม">เครื่องดื่ม</option>
                <option value="เครื่องใช้ไฟฟ้าต่างๆ">เครื่องใช้ไฟฟ้าต่างๆ</option>
                <option value="อุปกรณ์การใช้งานอื่นๆ">อุปกรณ์การใช้งานอื่นๆ</option>
            </select><br/>
            จำนวน : 
            <input type="number" id="quantity" name="quantity" min="0" step="1"> ชิ้น <br/>
            ราคา : 
            <input type="text" name="price"> บาท <br/>
            <input type="submit" value="Submit">           
        </form>
        <% session.removeAttribute("product");%>
    </body>
</html>
