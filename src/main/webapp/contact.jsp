<html>
<head>
  <title> Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" type="text/css" href="contact.css">

</head>
<body>



<div>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="btn btn-primary btn-lg" href="home.jsp" >Welcome to BUCASH </a>
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







<div class="container">
  <form action="report.jsp">

    <label for="fname">First Name</label>
    <input type="text" id="fname" name="fname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lname" placeholder="Your last name..">

    <label for="country">Address</label>
    <select id="country" name="country">
      <option value="Dhaka">Dhaka</option>
      <option value="Barishal">Barishal</option>
      <option value="Chattogram">Chattogram</option>
      <option value="Sylhet">Sylhet</option>
      <option value="Khulna">Khulna</option>
      <option value="Rajshahi">Rajshahi</option>
    </select>

    <label for="subject">Message</label>
    <textarea id="subject" name="msg" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">

  </form>
</div>
</div>
</body>
</html>