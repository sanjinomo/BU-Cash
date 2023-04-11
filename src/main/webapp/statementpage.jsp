

<html>
<head>
    <title> BRACU CASH Personal Services </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <style>
        body {
            background-image: url('image/black-concrete-wall.jpg');
        }
    </style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="btn btn-primary btn-lg" href="home.jsp" >BRACU CASH</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Service.jsp">Services</a>

                </li>


                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="accountinfo.jsp">Account</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="statementpage.jsp">Statements</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Log Out</a>
                </li>



            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div>
    <p></p>
    <p></p>
<%--    <form action="allstatements.jsp" >--%>
<%--        <button class="btn btn-primary" type="submit" href="allstatements.php" ></button>--%>
<%--    </form>--%>
    <p></p>
    <form action="monthlystatements.jsp">
        <button class="btn btn-primary" type="submit"  href="monthlystatements.jsp">All Statements</button>
    </form>
    <p></p>
    <p></p>
    <form class="d-flex" action="userstatement.jsp" method="POST">
        <input class="form-control me-2" type="search" placeholder="Search by User NID" name="SNID" aria-label="Search">
        <button class="btn btn-outline-primary" type="submit">Search</button>
    </form>




</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>






</body>
</html>