<!DOCTYPE html>
<html>
<head>
    <title>User Login and Registration</title>

    <!--  <meta name="viewport" content="width=device-width, initial-scale=1">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <!--         <link rel="preconnect" href="https://fonts.gstatic.com">-->
</head>
<body id=particles-js style=" background-image: url('loginb.jpg');">
<div class="container">
    <div class="reg-box" style="color: white">
        <div class="row">


            <div class="col-md-6 login-left" >

                <h2 style="font-size:28px">Registration Here</h2>

                <form action="registration.jsp" method="POST" style="font-size:12px" >
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="user" class="form-control" recquired >

                    </div>
                    <div class="form-group">
                        <label>PIN </label>
                        <input type="password" name="password" class="form-control" recquired>

                    </div>


                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" name="address" class="form-control" recquired>

                    </div>





                    <div class="form-group">
                        <label>NID</label>
                        <input type="text" name="nid" class="form-control" recquired>

                    </div>




                    <div class="form-group">
                        <label>Phone No.</label>
                        <input type="int" name="phone" class="form-control" recquired>

                    </div>

                    <div class="form-group">
                        <label>USER Type </label>

                        <select name="type" class="btn btn-primary" >
                            <option value="agent">Agent</option>
                            <option value="merchant">Merchant</option>
                            <option value="personal">Personal</option>

                        </select>

                    </div>






                    <button type="submit" class="btn btn-primary">Register</button>

                    <%
                    String msg=request.getParameter("msg");
                    if("successful".equals(msg)){
                        %>
                    <h1>DONE SIGNUP!</h1>
                    <%
                    }
                    %>

                    <%
                        String msg2=request.getParameter("msg");
                        if("error".equals(msg)){
                    %>
                    <h1>Error SIGNUP!</h1>
                    <%
                        }
                    %>


                </form>

            </div>
        </div>
    </div>
<%--    <button class="btn btn-primary" href="home.jsp">Go Back to Login Page</button>--%>
    <a href="index.jsp" class="btn btn-primary">Go Back to Log In</a>
</div>


<script type="text/javascript" src="particles.js"></script>
<script type="text/javascript" src="app.js"></script>
</body>
</html>