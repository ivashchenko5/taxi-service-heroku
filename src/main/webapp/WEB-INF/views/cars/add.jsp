<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/common_style.css' %>
    <%@include file='/WEB-INF/views/css/table_style.css' %>
</style>
<%@include file='/WEB-INF/views/head.jsp'%>
<html>
<head>
    <title>Add car</title>
</head>
<form action="${pageContext.request.contextPath}/index" style="float: left">
    <button>Back to main</button>
</form>
<form action="${pageContext.request.contextPath}/logout" style="float: right">
    <button>Logout</button>
</form>
<body>
<h4 style="color: #521010">${errorMsg}</h4>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h1 class="table_dark">Add car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
