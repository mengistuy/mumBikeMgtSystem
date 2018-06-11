<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bicycle Management System</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">BiSystem</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">Profile</a></li>
					<li><a href="#">My Bicycle</a></li>
					<li><a href="#">Campus</a></li>
					<li class="dropdown"><a href="#" type="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="/user/list">User</a></li>
							<li><a href="/bicycle/list">Bicycle</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/logout"> <span
							class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>