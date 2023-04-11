<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>
<%

        String uNID=(String)session.getAttribute("NID").toString();
        String uname="";
        String uphone="";
        String uaddress="";
        String utype="";
        String balance="";
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        Statement st2 = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * from usertable WHERE NID='" + uNID + "'");
        ResultSet rs2 = st2.executeQuery("SELECT * from account WHERE NID='" + uNID + "'");

        while(rs.next()){
            uname=rs.getString("name");
            uphone=rs.getString("phone");
            uaddress=rs.getString("address");
            utype=rs.getString("type");
        }
        while (rs2.next()){
            balance=String.valueOf(rs2.getFloat("balance"));
        }



%>

<html>
<head>
    <title> BRACU CASH User Info </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="btn btn-primary btn-lg" href="home.jsp" >BRACU CASH ID: <%=uname%></a>
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

<div >
    <body style="background-color:powderblue;">

    <h2 style="color: white; text-align: center;"> Account Information </h2>

    <div class="card" style="background-image: url('image/blue.jpg');">
        <div class="thumb-content">


            <p class="card-text"><b>Name: </b><%=uname%></p>
            <p class="card-text"><b>NID: </b><%=uNID%></p>
            <p class="card-text"><b>Phone: </b><%=uphone%></p>
            <p class="card-text"><b>Address: </b><%=uaddress%></p>
            <p class="card-text"><b>Type: </b><%=utype%></p>
            <p class="card-text"><b>Balance: </b><%=balance%> TK.</p>



        </div>

        <form method="get" action="updatepage.jsp" align="center">
            <button class="btn btn-primary" >Update User Information</button>
        </form>
    </div>

    </body>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>






</body>
</html>