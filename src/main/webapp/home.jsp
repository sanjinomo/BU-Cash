<%--<%@include file="validation.jsp"%>--%>
<%
    String uNID=(String)session.getAttribute("NID").toString();


%>
<html>
<head>
    <title> Welcome</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <!--
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    -->


    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">

</head>
<body>
<div>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="btn btn-primary btn-lg" href="home.jsp" >Welcome to BUCASH User ID: <%=uNID%></a>
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
                        <a class="nav-link" href="contact.jsp">Report</a>
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










    <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/sendmoney.jpg" alt="sendmoney" width="1400" height="500">
                <div class="carousel-caption">
                    <h1>                </h1>
                    <h2 style="color:black;"><b> SEND MONEY </b></h2>
                    <p3 style="font-family:courier;color:black;"> Send Money Easily</p3>
                </div>
            </div>
            <div class="carousel-item ">
                <img src="image/payment.jpg" alt="payment" width="1400" height="500">
                <div class="carousel-caption">
                    <h2  style="color:brown;"><b>Make Payment Online</b></h2>
                    <p5 style="font-family:courier;color:brown;">You can pay Bill online</p5>
                </div>
            </div>


            <div class="carousel-item">
                <img src="image/cashout.jpg" alt="cashout" width="1400" height="500">
                <div class="carousel-caption">
                    <h1>                </h1>
                    <h2 style="color:darkslateblue;"><b>Cash Out</b></h2>
                    <p3 style="font-family:courier;color: darkslateblue;">Can easily Cash Out from our nearest Agents.</p3>
                </div>
            </div>

        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

    <section class="my-5">
        <div>
            <br>
            <br>
            <h2 class="text-center" style="color: white;font-size:38px; "><b> About us</b></h2>
            <p style="text-align:center; color:white; font-size: 25px">A nearshore experience like you have never had before.</p>
            <br>
            <br>

        </div>
    </section>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="particles.js"></script>
    <script type="text/javascript" src="app.js"></script>
</div>

</body>

</html>