<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Admin</title>
    <link rel="shortcut icon" href="img/code.png" type="image/x-icon">
    <%@include file="all_component/all_css.jsp" %>

</head>

<body>
    <c:if test="${userobj.role ne 'admin'}">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>
    <%@include file="all_component/navbar.jsp" %>
        <div class="bg-image" style="background-image: url('https://wallpaperaccess.com/full/516029.jpg');

                height: 85vh;">
            <div class="text-center">
                <h1 class="text-white p-4">
                    Welcome to Admin Panel
                </h1>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
</body>

</html>