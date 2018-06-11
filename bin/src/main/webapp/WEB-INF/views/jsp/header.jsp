<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bicycle Management System</title>
 <link href="/mumBikeMgtSystem/src/main/webapp/WEB-INF/js/bootstrap.min.js" rel="stylesheet" />
 
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <script src="js/bootstrap.min.js"></script>
 <script src="js/jquery.min.js"></script>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	</head>
<body>
<!--  <div class="container">
  <spring:url value="/user/saveUser" var="saveURL" />
  <h2>Bicycle Management System</h2> -->
  <div class="col-md-8">
  <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <nav class="navbar navbar-dark bg-dark">
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
                <spring:url value="/user/addUser/" var="addURL" />
  		<a class="nav-link" href="${addURL }" >Add Student</a> 
      </li>
      <li class="nav-item">
        <spring:url value="/bicycle/addBicycle/" var="addURL" />
  		<a class="nav-link" href="${addURL }" >Add Bicycle</a> 
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Add Owner
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Add Student</a>
          <a class="dropdown-item" href="#">Add Staff</a>

        </div>
      </li>
    </ul>
  </div>
</nav>
</div>
<%--   <spring:url value="/bicycle/addBicycle/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Bicycle</a>  
 </div> --%>
 
</body>
</html>