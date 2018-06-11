<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<%@ include file="header.jsp"%>
	<div class="container main-container">
		<h2>User List</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">First Name</th>
				<th scope="row">Last Name</th>
				<th scope="row">Email</th>
				<th scope="row">Address</th>
				<th scope="row">Phone No</th>
				<th scope="row">Password</th>
			</thead>
			<tbody>
				<c:forEach items="${userList }" var="user">
					<tr>
						<td>${user.fname }</td>
						<td>${user.lname }</td>
						<td>${user.email }</td>
						<td>${user.address }</td>
						<td>${user.phoneNo }</td>
						<td>${user.password }</td>
						<td><spring:url value="/user/updateUser/${user.userId }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a></td>
						<td><spring:url value="/user/deleteUser/${user.userId }"
								var="deleteURL" /> <a class="btn btn-primary"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/user/addUser/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Add
			New User</a>
	</div>
</body>
</html>