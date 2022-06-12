<%@ page import ="com.dao.JobDAO" %>
<%@ page import ="com.DB.DBconnect" %>
<%@ page import ="java.util.List"%>
<%@ page import ="com.entity.Jobs" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>User: Jobs</title>
    <link rel="shortcut icon" href="img/code.png" type="image/x-icon">
    <%@include file="all_component/all_css.jsp" %>
</head>

<body style="background-color: #9FE2BF;">
    <c:if test="${empty userobj}">
        <c:redirect url="login.jsp" />
    </c:if>
    <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <% int id=Integer.parseInt(request.getParameter("id")); JobDAO dao=new JobDAO(DBconnect.getConn());
                        Jobs j=dao.getJobById(id); %>
                        <div class="card mt-2">
                            <div class="card-body">
                                <div class="text-center text-primary">
                                    <i class="far fa-clipboard fa-2x"></i>
                                </div>
                                <h6>
                                    <%= j.getTitle() %>
                                </h6>
                                <p>
                                    <%= j.getDescription() %>
                                </p>
                                <br>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <input type="text" class="form-control form-control-sm"
                                            value="Location: <%= j.getLocation() %>" readonly>
                                    </div>
                                    <div class="form-group col-md-5">
                                        <input type="text" class="form-control form-control-sm"
                                            value="Category: <%= j.getCategory() %>" readonly>
                                    </div>
                                </div>
                                <h6>Publish Date:<%=j.getPdate().toString()%>
                                </h6>

                            </div>
                        </div>
                </div>
            </div>
        </div>
</body>
</html>