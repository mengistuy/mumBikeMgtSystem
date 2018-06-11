<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="header.jsp"%>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	</head>
<body>
 <div class="container">
  <spring:url value="/bicycle/saveBicycle" var="saveBicycle" />
  <h2>Bicycle</h2>
  <form:form modelAttribute="bicycleForm" method="post" action="${saveBicycle }" cssClass="form" >
   <form:hidden path="bicycleId"/>
   <div class="form-group">
   <div>
<%--     <label>Color</label>
    <form:input path="color" id="color"/>
        <label>Make</label>
    <form:input path="make" id="make"/>
    </div> --%>
    
    
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="color">Color</label>
      <input type="color" class="form-control" id="color" placeholder="Color">
    </div>
    <div class="form-group col-md-6">
      <label for="make">make</label>
      <input type="make" class="form-control" id="make" placeholder="Make">
    </div>
  </div>
  
 
    <div class="form-group col-md-6">
      <label for="model">Model</label>
      <input type="model" class="form-control" id="model" placeholder="Model">
    </div>
    <div class="form-group col-md-6">
      <label for="size">Size</label>
      <input type="size" class="form-control" id="size" placeholder="size">
    </div>

<%--     <div>
        <label>Model</label>
    <form:input path="model" id="model"/>
        <label>Size</label>
    <form:input path="size" id="size"/>
    </div>
    <div> --%>
 <%--     <label>Description</label>
    <form:textarea path="desc" id="desc row="4"/> --%>
    <div class="form-group">
    <label for="Description">Description</label>
    <textarea class="form-control" id="Description" rows="4"></textarea>
  </div>
    </div>
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form> 
 </div>
 
  <div class="container">
  <h2>Bicycle List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">color</th>
    <th scope="row">model</th>
    <th scope="row">make</th>
    <th scope="row">size</th>
   </thead>
   <tbody>
    <c:forEach items="${bicycleList }" var="bicycle" >
     <tr>
      <td>${bicycle.color }</td>
      <td>${bicycle.model }</td>
	  <td>${bicycle.make }</td>
      <td>${bicycle.size }</td>
      <td>
       <spring:url value="/bicycle/updateBicycle/${bicycle.bicycleId }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
            <td>
       <spring:url value="/bicycle/donateBicycle/${bicycle.bicycleId }" var="donateURL" />
       <a class="btn btn-primary" href="${donateURL }" role="button" >Donate</a>
      </td>
      <td>
       <spring:url value="/bicycle/deleteBicycle/${bicycle.bicycleId }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/bicycle/addBicycle/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Bicycle</a>
 </div>
</body>
</html>