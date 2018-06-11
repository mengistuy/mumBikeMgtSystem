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
		<spring:url value="/bicycle/saveBicycle" var="saveBicycle" />
		<h2>Bicycle</h2>
		<form:form  method="post" action="${saveBicycle }" modelAttribute="addNewBicycleForm" cssClass="form" >
		<form:hidden path="bicycleId"/>
			<div class="form-group">
				<div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="color">Color</label>
							<form:input type="color" class="form-control" path="color" id="color" placeholder="Color"/>
						</div>
						<div class="form-group col-md-6">
							<label for="make">make</label>
							<form:input type="make" class="form-control"  path="make" id="make" placeholder="Make"/>
						</div>
					</div>


					<div class="form-group col-md-6">
						<label for="model">Model</label>
						<form:input type="model" class="form-control"  path="model" id="model" placeholder="Model"/>
					</div>
					<div class="form-group col-md-6">
						<label for="size">Size</label>
						<form:input type="size" class="form-control"  path="size" id="size" placeholder="size"/>
					</div>

					<div class="form-group">
						<label for="description">Description</label>
						<textarea class="form-control" path="description" id="description" rows="4"></textarea>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>
	</div>
</body>
</html>