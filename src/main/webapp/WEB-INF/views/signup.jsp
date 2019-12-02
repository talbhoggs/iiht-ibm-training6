<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head class="h-100">
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login Page</title>
<link
    href="${pageContext.request.contextPath}/webjars/bootstrap/4.3.1/css/bootstrap.min.css"
    type="text/css" rel="stylesheet" />
<link
    href="${pageContext.request.contextPath}/webjars/font-awesome/5.10.1/css/all.css"
    type="text/css" rel="stylesheet" />

</head>


<style>
/* Custom page CSS
-------------------------------------------------- */
/* Not required for template or sticky footer method. */
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
    <header>
        <!-- Fixed navbar -->
        <nav
            class="navbar navbar-expand-md navbar-dark fixed-top bg-success">
            <a class="navbar-brand" href="#">IIHT-IBM</a>
            <button class="navbar-toggler" type="button"
                data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div
                class="navbar-collapse collapse w-100 order-3 dual-collapse2"
                sec:authorize="isAnonymous()">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link"
                        href="${pageContext.request.contextPath}/about">About</a></li>
                    <li class="nav-item"><a class="nav-link"
                        href="${pageContext.request.contextPath}/login">Login</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <main role="main" class="flex-shrink-0">
        <div class="container">


            <div class="row justify-content-center mt-5">

                <div class="col-5">
                    <h4 class="mt-5">Sign up</h4>
                    <form:form
                        action="${pageContext.request.contextPath}/signup/submit"
                        method="POST" modelAttribute="user">
                        <div class="form-group row">
                            <label for="name"
                                class="col-sm-3 col-form-label">Name:
                            </label>
                            <div class="col-sm-9 input-icons">
                                <i class="fas fa-user icon"></i>
                                <form:input path="name"
                                    cssClass="form-control input-field" />
                                <!-- <input
                                    type="text"
                                    class="form-control input-field"
                                    id="name" /> -->
                                <span class="text-danger"><form:errors
                                        path="name" /></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email"
                                class="col-sm-3 col-form-label">Email:
                            </label>
                            <div class="col-sm-9 input-icons">
                                <i class="fas fa-envelope icon"></i>
                                <form:input path="email"
                                    cssClass="form-control input-field" />
                                <!-- <input
                                    type="text"
                                    class="form-control input-field"
                                    id="email"></input>  -->
                                <span class="text-danger"><form:errors
                                        path="email" /></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="username"
                                class="col-sm-3 col-form-label">Username:
                            </label>
                            <div class="col-sm-9 input-icons">
                                <i class="far fa-user icon"></i>
                                <form:input path="userName"
                                    cssClass="form-control input-field" />
                                <!-- <input
                                    type="text"
                                    class="form-control input-field"
                                    id="userName"></input> -->
                                <span class="text-danger"><form:errors
                                        path="userName" /></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password"
                                class="col-sm-3 col-form-label">Password:</label>
                            <div class="col-sm-9 input-icons">
                                <i class="fas fa-unlock-alt icon"></i>
                                <!-- <input
                                    type="password"
                                    class="form-control input-field"
                                    id="password" />  -->
                                <form:password path="password"
                                    cssClass="form-control input-field" />
                                <span class="text-danger"><form:errors
                                        path="password" /></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password"
                                class="col-sm-3 col-form-label">Captcha:</label>
                            <div class="col-sm-5">
                                <img alt="captcha"
                                    src="${pageContext.request.contextPath}/captcha">
                                <br />
                                <br />
                                <form:input path="captcha"
                                    cssClass="form-control input-field" />
                                <span class="text-danger">Invalid Captcha</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="float-left">
                                <button type="submit"
                                    class="btn btn-primary">Register</button>
                            </div>
                            <div class="float-right">
                                <button type="submit"
                                    class="btn btn-link">
                                    <i class="fas fa-redo-alt"></i>
                                    Reset
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </main>
</body>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="webjars/popper.js/1.14.3/popper.js"></script>
</html>