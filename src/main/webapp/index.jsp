
<!DOCTYPE html>
<html>
<head>
    <title>User Login and Registration</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body id="particles-js" style="background-image: url('loginb.jpg');" >

<div   class="container" align="center">
    <div class="login-box" style="color: white">
        <div class="row">
            <div class="col-md-6 login-left">
                <h2><b>Login Here</b></h2>
                <form action="validation.jsp" method="POST">
                    <div class="form-group">
                        <label>NID</label>
                        <input type="text" name="nid" class="form-control" recquired />

                    </div>
                    <div class="form-group">
                        <label>PIN</label>
                        <input type="password" name="password" class="form-control" recquired />

                    </div>

                    <button type="submit" class="btn btn-primary" style=" margin-top: 0px;">Log in</button>


                    <%
                        String msg=request.getParameter("msg");
                        if("not".equals(msg)){
                    %>
                    <h1>User Name or ID not Found!</h1>
                    <%
                        }
                    %>


                </form>
                <br>
                <br>
                <form action="signup.jsp">
                    <button class="btn btn-primary" href="signup.jsp">For Registration</button>
                </form>

                <%
                    String msg2=request.getParameter("msg");
                    if("error".equals(msg2)){
                %>
                <p style="color: red">Error Login!</p>
                <%
                    }
                %>



                <%
                    String msg3=request.getParameter("msg");
                    if("notfound".equals(msg2)){
                %>
                <p style="color: red">Wrong Password!</p>
                <%
                    }
                %>
            </div>


            <!--            <button class="btn" type="submit" href="registrationpage.php">For Registration</button>-->


        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="particles.js"></script>
<script type="text/javascript" src="app.js"></script>

</body>
</html>
