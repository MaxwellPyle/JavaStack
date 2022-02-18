<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
        <script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        <title>Demo JSP</title>
    </head>
<body>
    <div class="container d-flex"> <!-- Beginning of Container -->
    	<div class="container w-75 border border-dark m-2">
    		<h2>edit this expense:</h2>
    		<form:form action="/expenses/${expense.id}" method="post" modelAttribute="expense">
			    <p>
			        <form:label path="name">Name</form:label>
			        <form:errors path="name"/>
			        <form:input path="name"/>
			    </p>
			    <p>
			        <form:label path="vendor">Vendor</form:label>
			        <form:errors path="vendor"/>
			        <form:input path="vendor"/>
			    </p>
			    <p>
			        <form:label path="description">Description</form:label>
			        <form:errors path="description"/>
			        <form:textarea path="description"/>
			    </p>
			    <p>
			        <form:label path="amount">Amount</form:label>
			        <form:errors path="amount"/>     
			        <form:input type="number" path="amount"/>
			    </p>    
			    <input type="submit" value="Submit"/>
			</form:form>    
    	</div> 
	</div>
</html>