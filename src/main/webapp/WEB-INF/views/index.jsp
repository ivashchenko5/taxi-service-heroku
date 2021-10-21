<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/common_style.css' %>
    <%@include file='/WEB-INF/views/css/index_style.css' %>
</style>
<%@include file='/WEB-INF/views/head.jsp'%>
<html>
<head>
    <title>taxi-service</title>
</head>
<body>
<form method="post" id="redirect"></form>
<table class="table_main">
    <tr>
        <th><h1>Redirect to</h1></th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/all">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/all">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/all">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/driver/cars">Display only my cars</a></td></tr>
</table>
<form class="logout" action="${pageContext.request.contextPath}/logout">
    <button>Logout</button>
</form>
</body>
</html>

