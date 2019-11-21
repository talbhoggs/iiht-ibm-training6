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
                class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a
                        href="${pageContext.request.contextPath}/signup"
                        class="nav-link">Sign up</a></li>
                    <li class="nav-item"><a
                        href="${pageContext.request.contextPath}/login"
                        class="nav-link">Login</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <main role="main" class="flex-shrink-0">
        <div class="container mt-5">
            <div class="row">

                <div class="col">
                    <h4 class="mt-5">About</h4>
                    <p>
                        This webapp is assignment number 6 for the Full
                        Stack Developer (FSD) course by <a
                            href="https://iiht.com">IIHT</a> and <a
                            href="https://www.ibm.com">IBM</a>.
                    </p>
                    <p>
                        <strong>Date submitted:</strong> October 8, 2019
                        <br /> <strong>Developer:</strong> Charles A.
                        Amper <br /> <strong>Email:</strong>
                        amperca@ph.ibm.com
                    </p>
                    <h5>Technologies used:</h5>
                    <ul>
                        <li><a href="https://spring.io">Spring
                                MVC</a></li>
                        <li><a
                            href="https://spring.io/projects/spring-security">Spring
                                Security</a></li>
                        <li><a href="https://www.h2database.com/">H2
                                Database</a></li>
                        <li><a href="https://getbootstrap.com/">Bootstrap</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </main>

    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.3/popper.js"></script>
</body>
</html>