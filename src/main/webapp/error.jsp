
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
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

    <br>
    <p> Note: <%= exception%>  </p>


    </br>
</div>

</body>
</html>
