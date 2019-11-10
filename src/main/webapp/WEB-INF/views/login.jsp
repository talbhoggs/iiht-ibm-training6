<!DOCTYPE html>
<html>
<head class="h-100">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login Page</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	type="text/css" rel="stylesheet" />
<link href="webjars/font-awesome/5.10.1/css/all.css" type="text/css"
	rel="stylesheet" />
<style>
/* Custom page CSS
-------------------------------------------------- */
/* Not required for template or sticky footer method. */
h4 {
	margin-bottom: 1em;
}

.footer {
	background-color: #f5f5f5;
}

.footer>.container {
	padding-right: 15px;
	padding-left: 15px;
}

code {
	font-size: 80%;
}

.input-icons i {
	position: absolute;
}

.input-icons {
	width: 100%;
	margin-bottom: 10px;
}

.icon {
	padding: 10px;
	min-width: 40px;
}

.input-field {
	width: 100%;
	padding: 10px 10px 13px 35px;
}
</style>
</head>
<body class="d-flex flex-column h-100">

	<main role="main" class="flex-shrink-0">
		<header>
			<!-- Fixed navbar -->
			<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-success">
				<a class="navbar-brand" href="#">IIHT-IBM</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarCollapse" aria-controls="navbarCollapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse collapse w-100 order-3 dual-collapse2"
					sec:authorize="isAnonymous()">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link">About</a></li>
						<li class="nav-item"><a class="nav-link">Sign Up</a></li>
					</ul>
				</div>
			</nav>
		</header>

		<div class="container mt-5">


			<div class="row justify-content-center">

				<div class="col-5">
					<h4 class="mt-5">Login</h4>
					<form method="post">
						<div class="form-group row">
							<label for="username" class="col-sm-3 col-form-label">Username:
							</label>
							<div class="col-sm-9 input-icons">
								<i class="far fa-user icon"></i></i><input type="text"
									class="form-control input-field" id="username" name="username"
									placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<label for="password" class="col-sm-3 col-form-label">Password:</label>
							<div class="col-sm-9 input-icons">
								<i class="fas fa-unlock-alt icon"></i><input type="password"
									class="form-control input-field" id="password" name="password"
									placeholder="">
							</div>
						</div>
						<!--
						<div class="form-group row">
							<label for="password" class="col-sm-3 col-form-label">Captcha:</label>
							<div class="col-sm-5">
								<img id="captcha" alt="captcha"> <br />
								<br /> <input type="password" class="form-control" id="captcha"
									name="captcha" /> <span class="text-danger">Invalid Captcha</span>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-12 d-flex justify-content-center">
								<span class="text-danger"> Email
									or Password invalid, please verify </span>
							</div>
							<div class="col-sm-12 d-flex justify-content-center">
								<span class="text-danger"> Logout
									Successfully </span>
							</div>
							<div class="col-sm-12 d-flex justify-content-center">
								<span class="text-danger" th:if="${param.accountUpdate}">
									Your Account has been updated Successfully. <br />Please login
									to see the changes.
								</span>
							</div>

						</div>
						-->
						<div class="form-group">
							<div class="float-left">
								<button type="submit" class="btn btn-primary">Sign In</button>
							</div>
							<div class="float-right">
								<button onlick="loadImage();" class="btn btn-link">
									<i class="fas fa-redo-alt"></i> Reset
								</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</main>

	<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
	<script src="webjars/popper.js/1.14.3/popper.js"></script>
</body>
</html>