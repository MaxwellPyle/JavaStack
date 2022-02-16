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
<div class="container">
	<table>
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="oneFruit" items="${fruits}">
				<tr>
					<td><c:out value="${oneFruit.name}"></c:out></td>
					<td><c:out value="${oneFruit.price}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>