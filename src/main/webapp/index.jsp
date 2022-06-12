<%@ page import="com.DB.DBconnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Web</title>
    <link rel="shortcut icon" href="img/code.png" type="image/x-icon">
    <%@include file="all_component/all_css.jsp" %>

</head>

<body>
    <%@include file="all_component/navbar.jsp" %>

        <% Connection conn=DBconnect.getConn(); %>

            <div class="bg-image" style="background-image: url('https://wallpaperaccess.com/full/516029.jpg');
                height: 85vh;">
                <div class="text-center">
                    <h1 class="text-white p-4">
                        <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i> IT Jobs Finder
                    </h1>
                </div>
            </div>

            <%@include file="all_component/footer.jsp" %>
</body>

</html>