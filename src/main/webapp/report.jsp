<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>

<%
    String uNID=(String)session.getAttribute("NID").toString();

    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String msg=request.getParameter("msg");
    float nidd=Float.parseFloat(uNID);




    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("insert into report(fname,lname,msg,nid) values('"+fname+"','"+lname+"','"+msg+"','"+nidd+"')");


        ps.executeUpdate();
        response.sendRedirect("contact.jsp");


    }
    catch (Exception e){
        e.printStackTrace();
//        response.sendRedirect("signup.jsp?msg=error");

    }


%>