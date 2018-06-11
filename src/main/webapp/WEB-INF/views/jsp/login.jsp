<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Bicycle Management System</title>
	<link rel="stylesheet" type="text/css" href="resources/css/login.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br/>
		<br/>
		<img src="/resources/images/login.jpg" class="img-responsive center-block" width="200" height="300" alt="Logo" />
		<br/>
		<form action="/login" method="POST" class="form-signin">
			<h3 class="form-signin-heading">Welcome</h3>
			<br/>
			 
			<input type="text" id="email" name="email"  placeholder="Email"
				class="form-control" value="admin@mum.edu"/> <br/> 
			<input type="password"  placeholder="Password"
				id="password" name="password" class="form-control" value="12345678" /> <br /> 
			<c:if test="${param.error}">
				<div align="center"">
					<p style="font-size: 20; color: #FF1C19;">Email or Password invalid, please verify</p>
				</div>
			</c:if>
			<button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Login</button>
		</form>
	</div>
</body>
</html>