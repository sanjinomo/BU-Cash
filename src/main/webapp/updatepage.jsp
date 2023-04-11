<html>
<head>
  <title > BRACU CASH Personal </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


  <link rel="preconnect" href="https://fonts.gstatic.com">

</head>
<body style="background-image: url('image/blue.jpg'); ">

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

<h1 style="color: white">Update your information <span class="badge badge-primary">Here</span></h1>
<div style="text-align: center; padding-top: 50px">
  <form action="update.jsp" method="POST" >
    <select name="drop" class="btn btn-secondary btn-block">
      <option value="name">Name</option>
      <option value="password">PIN</option>
      <option value="address">Address</option>
      <option value="phone">Phone</option>

    </select>

    <input type ="text"  name="value" style="text-align: center; width:1366px; height: 40px">
    <input type="submit" class="btn btn-primary btn-block" value="Update" style="text-align: center;">
  </form>


  <%
    String msg=request.getParameter("msg");

    if("error".equals(msg)){
  %>
  <h1>Error Updating!</h1>
  <%
    }
  %>

</div>




</body>
</html>