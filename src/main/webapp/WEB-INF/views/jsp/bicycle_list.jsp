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
		<h2>Bicycle List</h2>
		<table class="table table-striped">
			<thead>
				<th scope="row">color</th>
				<th scope="row">model</th>
				<th scope="row">make</th>
				<th scope="row">size</th>
			</thead>
			<tbody>
				<c:forEach items="${bicycleList }" var="bicycle">
					<tr>
						<td>${bicycle.color }</td>
						<td>${bicycle.model }</td>
						<td>${bicycle.make }</td>
						<td>${bicycle.size }</td>
						<td><spring:url
								value="/bicycle/updateBicycle/${bicycle.bicycleId }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Update</a></td>
						
						<td><spring:url
								value="/bicycle/deleteBicycle/${bicycle.bicycleId }"
								var="deleteURL" /> <a class="btn btn-primary"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/bicycle/addBicycle/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Add
			New Bicycle</a>
	</div>
</body>
</html>