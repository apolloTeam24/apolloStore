<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>YES</title>
  </head>
  <body>
  <form action="<c:url value="/login.html"/>" method="POST">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="submit">
  </form>
  </body>
</html>
