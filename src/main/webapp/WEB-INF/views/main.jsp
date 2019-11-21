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
                        <li class="nav-item"><a href="/about"
                            class="nav-link">About</a></li>
                        <li class="nav-item"><a class="nav-link">Sign
                                Up</a></li>
                    </ul>
                </div>
            </nav>
        </header>

        <div class="container mt-5">

            <h1>Main</h1>


        </div>
    </main>

    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.4.1/jquery.min.js"></script>
    <script src="webjars/popper.js/1.14.3/popper.js"></script>
</body>
</html>