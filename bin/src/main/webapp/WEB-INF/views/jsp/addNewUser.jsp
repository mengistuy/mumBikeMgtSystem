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
  <spring:url value="/user/saveUser" var="saveUser" />
  <h2>User</h2>
  <form:form modelAttribute="addNewUser" method="post" action="${saveUser }" cssClass="form" >
   <form:hidden path="userId"/>
   <div class="form-group">
   <%-- <form:select name="user" path="userType">
      <option value="student">Student</option>
      <option value="faculty">Faculty</option>
      <option value="staff">Staff</option>
      </form:select> --%>
   <div class="form-group col-md-8">
	   <div class="form-row">
	    <div class="form-group col-md-4">
	      <label for="fname">First Name</label>
	      <form:input type="fname" class="form-control" path="fname" id="fname" placeholder="First Name"/>
	    </div>
	    <div class="form-group col-md-4">
	      <label for="lname">Last Name</label>
	      <form:input type="lname" class="form-control" path="lname" id="lname" placeholder="Last Name"/>
	    </div>
	  </div>
  
	   <div class="form-row">
	     <div class="form-group col-md-4">
	      <label for="email">Email</label>
	      <form:input type="email" class="form-control" path="email" id="email" placeholder="Email"/>
	    </div>
	    <div class="form-group col-md-4">
	      <label for="address">Address</label>
	      <form:input type="address" class="form-control" path="address" id="address" placeholder="Address"/>
	    </div>  
	  </div>
  
	   <div class="form-row">
	     <div class="form-group col-md-4">
	      <label for="phoneNo">Phone No</label>
	      <form:input type="phoneNo" class="form-control" path="phoneNo" id="phoneNo" placeholder="Phone No"/>
	    </div>
	    <div class="form-group col-md-4">
	      <label for="password">Password</label>
	      <form:input type="password" class="form-control" path="password" id="password" placeholder="Password"/>
	    </div>  
	  </div>
	  <button type="submit" class="btn btn-primary">Save</button>
    </div>
     
   </div>
  
  </form:form> 
 </div>
</body>
</html>