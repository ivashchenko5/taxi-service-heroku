<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/common_style.css' %>
    <%@include file='/WEB-INF/views/css/table_style.css' %>
</style>
<%@include file='/WEB-INF/views/head.jsp'%>
<html>
<head>
    <title>All manufacturers</title>
</head>
<form action="${pageContext.request.contextPath}/index" style="float: left">
    <button>Back to main</button>
</form>
<form action="${pageContext.request.contextPath}/logout" style="float: right">
    <button>Logout</button>
</form>
<body>
<h1 class="table_dark">All manufacturers:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>
                <c:out value="${manufacturer.id}"/>
            </td>
            <td>
                <c:out value="${manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${manufacturer.country}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
