<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="shortcut icon" href="img/code.png" type="image/x-icon">
    <%@include file="all_component/all_css.jsp" %>
</head>

<body style="background-color: #9FE2BF;">
    <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <div class="row p-5">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center text-primary">
                                    <i class="fas fa-user-plus fa-2x" aria-hidden="true"></i>
                                    <h5>Login</h5>
                                </div>
                                <c:if test="${!empty succMsg}">
                                    <h6 class="text-center text-danger">${succMsg}</h6>
                                    <c:remove var="succMsg" />
                                    </c:if>
                                    <form action="login" method="post">
                                        <div class="form-group">
                                            <label>Enter Email</label> <input type="email" required="required"
                                                class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Enter Password</label> <input
                                                required="required" class="form-control" id="exampleInputPassword1"
                                                name="password">
                                        </div>
                                        <button type="submit"
                                            class="btn btn-primary badge-pill btn-block">Login</button>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>