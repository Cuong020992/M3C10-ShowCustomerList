<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--

  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/30/2021
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%

    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội","https://i.pinimg.com/736x/34/d6/f4/34d6f424bedf3dbc00ad054aec65a28b.jpg"));
    customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang","data:image/jpeg;base64,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"));
    customerList.add(new Customer("Nguyễn Thái Hòa","1983-08-22","Nam Định","https://www.dungplus.com/wp-content/uploads/2019/12/girl-xinh-1-480x600.jpg"));
    customerList.add(new Customer("Trần Đăng Khoa","1983-08-17","Hà Tây","https://photo-cms-kienthuc.zadn.vn/zoom/800/uploaded/nguyenanhson/2019_08_28/4/len-bao-trung-gai-xinh-vong-1-khung-tiet-lo-ve-qua-khu.jpg"));
    customerList.add(new Customer("Nguyễn Đình Thi","1983-08-19","Hà Nội","https://image-us.eva.vn/upload/3-2020/images/2020-09-10/gai-xinh-khoe-nhung-mam-com-sieu-ngon-dan-mang-thot-len-com-sinh-vien-gi-xin-qua-101575085_567484237538834_7010232246003040256_n-1599703539-16-width1536height2048.jpg"));

    request.setAttribute("customers", customerList);

%>

<div>Danh sách khách hàng</div>
<table>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customers" items="${customers}">
        <tr>
            <td>${customers.name}</td>
            <td>${customers.birth}</td>
            <td>${customers.address}</td>
            <td><img src="${customers.image}" height="100"></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
