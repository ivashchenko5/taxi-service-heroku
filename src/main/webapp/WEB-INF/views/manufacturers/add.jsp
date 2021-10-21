<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/common_style.css' %>
    <%@include file='/WEB-INF/views/css/table_style.css' %>
</style>
<%@include file='/WEB-INF/views/head.jsp'%>
<html>
<head>
    <title>Manufacturers</title>
</head>
<form action="${pageContext.request.contextPath}/index" style="float: left">
    <button>Back to main</button>
</form>
<form action="${pageContext.request.contextPath}/logout" style="float: right">
    <button>Logout</button>
</form>
<body>
<h4 style="color: #521010">${errorMsg}</h4>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h1 class="table_dark">Add manufacturer:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="country" form="manufacturer" required>
        </td>
        <td>
            <input type="submit" name="add" form="manufacturer" required>
        </td>
    </tr>
</table>
</body>
</html>
