<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
  String amount="";
  String uNID=(String)session.getAttribute("NID").toString();
  int i=1;
  String oNID=request.getParameter("SNID");
  String type="";
  String date="";
  String txid="";
  int z=0;


  Connection con = ConnectionProvider.getCon();
  Statement st = con.createStatement();

  ResultSet rs = st.executeQuery("SELECT * from transaction WHERE NID='" + uNID + "' AND ONID='"+oNID+"' ORDER BY date DESC");

%>

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
  <div style="alignment: center">
    <h2 style="color: white; text-align: center; font-size: 300%"> <b> Monthly Statements </b> </h2>
    <a href="statementpage.jsp" class="btn btn-danger">Go Back </a>
    <p></p>

  </div>

  <%
    while (rs.next()){%>

  <div class="card">
    <p class="btn btn-primary btn-lg" style=" font-size:160%; border:2px solid black;"> <b>Statement no. <%=i%> </b> </p>
    <%
      i=i+1;
    %>
    <div class="thumb-content" style="background-image: url('image/blue.jpg');">

      <%
        amount=String.valueOf(rs.getFloat("amount"));
        oNID=rs.getString("ONID");
        type=rs.getString("type");
        date=rs.getString("date");
        txid=rs.getString("txid");
        z=1;

      %>
      <p class="card-text"><b>TXID: </b><%=txid %></p>
      <p class="card-text"><b>NID: </b><%=uNID %></p>
      <p class="card-text"><b>Reciever NID: </b><%=oNID%></p>
      <p class="card-text"><b>Transacted Amount: </b><%=amount %>TK</p>
      <p class="card-text"><b>Time: </b><%=date %></p>
      <p class="card-text"><b>Type: </b><%=type %></p>
      <%}%>

      <%if (z!=1){%>
      <h1 style="color: red"><b>NID Not Found!</b></h1>

      <%}
      %>



    </div>

  </div>



</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>






</body>
</html>