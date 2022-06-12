<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Ad: Add Job</title>
    <link rel="shortcut icon" href="img/code.png" type="image/x-icon">
    <%@include file="all_component/all_css.jsp" %>
</head>

<body style="background-color: #9FE2BF;">
    <c:if test="${userobj.role ne 'admin'}">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>
    <%@include file="all_component/navbar.jsp" %>
        <div class="container p-2">
            <div class="col-md-10 offset-md-1">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center text-primary">
                            <i class="fas fa-user-friends fa-3x"></i>

                            <c:if test="${not empty succMsg }">
                                <h6 class="text-center text-danger">${succMsg}</h6>
                                <c:remove var="succMsg" />
                            </c:if>

                            <h5>Add Jobs</h5>
                        </div>
                        <form action="add_job" method="post">
                            <div class="form-group">
                                <label>Enter Title</label> <input type="text" name="title" required
                                    class="form-control">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>Location</label> <select name="location" class="custom-select"
                                        id="inlineFormCustomSelectPref">
                                        <option selected>Choose...</option>
                                        <option value="HaNoi">HaNoi</option>
                                        <option value="DaNang">DaNang</option>
                                        <option value="SaiGon">SaiGon</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Category</label> <select class="custom-select
                                     id=" inlineFormCustomSelectPref" name="category">
                                        <option selected>Choose...</option>
                                        <option value="SQLDeveloper">SQL Developer</option>
                                        <option value="AIEngineer">AI Engineer</option>
                                        <option value="WebDeveloper">Web Developer</option>
                                        <option value="DataScientist">Data Scientist</option>
                                        <option value="DataAnalyst">Data Analyst</option>
                                        <option value="DevOps">DevOps</option>
                                        <option value="ITHelpdesk">IT Helpdesk</option>
                                        <option value="NetworkAdmin">Network Admin</option>
                                        <option value="CloudArchitect">Cloud Architect</option>
                                        <option value="SoftwareEngineer">Software Engineer</option>
                                        <option value="ITManager">IT Manager</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Status</label> <select class="form-control" name="status">
                                        <option class="Active" value="Active">Active</option>
                                        <option class="Inactive" value="Inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Enter Description</label>
                                <textarea required rows="6" cols="" name="desc" class="form-control"></textarea>
                            </div>
                            <button class="btn btn-primary">Publish Job</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>