<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Demo JSP</title>
    </head>
<body>
    <h3>Customer name: </h3>
    <p><c:out value="${clientname}"/></p>
    <h3>Item name: </h3>
    <p><c:out value="${itemname}"/></p>
    <h3>Price: </h3>
    <p><c:out value="${price}"/> </p>
    <h3>Description: </h3>
    <p> <c:out value="${description}"/></p>
    <h3>Vendor: </h3>
    <p><c:out value="${vendor}"/> </p>
</body>
</html>