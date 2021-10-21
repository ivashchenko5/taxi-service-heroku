<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/common_style.css' %>
    <%@include file='/WEB-INF/views/css/table_style.css' %>
</style>
<%@include file='/WEB-INF/views/head.jsp'%>
<html>
<head>
    <title>All drivers</title>
</head>
<form action="${pageContext.request.contextPath}/index" style="float: left">
    <button>Back to main</button>
</form>
<form action="${pageContext.request.contextPath}/logout" style="float: right">
    <button>Logout</button>
</form>
<body>
<h4 style="color: #521010;">${errorMsg}</h4>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>Login</th>
        <th>Password</th>
        <th>License number</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
