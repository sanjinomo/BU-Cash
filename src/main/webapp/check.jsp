<%@include file="validation.jsp"%>
<html>
<head>
    <title>ErrorDetection</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }

    </style>
</head>
<body>
<div style="padding:20px;color: brown; background: bisque ">
    <h1>Sorry! Something went wrong! </h1>
    <%
        String msg=request.getParameter(nid);
    %>
    <h1>DONE SIGNUP!</h1>
    <%=msg
    %>
    <br>



    </br>
</div>

</body>
</html>
