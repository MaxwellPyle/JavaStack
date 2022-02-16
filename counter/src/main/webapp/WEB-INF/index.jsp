<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
        <script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        <title>Demo JSP</title>
    </head>
<body>
<h1>Welcome to the page!</h1>
<p>You have visited the site <c:out value="${counter}"/> Times!</p>
<a href="/your_server/counter" class="btn btn-primary">try again!</a>
</body>
</html>