<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jedi
  Date: 6/4/20
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In Page</title>
</head>
<body>

<form action="/login.jsp" method="post">
    <label for="userName">Username:</label>
    <input type="text" id="userName" name="userNam">
    <label for="password">Password:</label>
    <input type="text" id="password" name="password">
    <button>Submit</button>

    <c:if test="${param.userName.equalsIgnoreCase('admin') && param.password.equalsIgnoreCase('password')}">
        <% response.sendRedirect("/profile.jsp");%>
    </c:if>
</form>

</body>
</html>
