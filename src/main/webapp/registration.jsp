<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>

<%
    String user=request.getParameter("user");
    String password=request.getParameter("password");
    String address=request.getParameter("address");
    String nid=request.getParameter("nid");
    String phone=request.getParameter("phone");
    String type=request.getParameter("type");
    float balance=1000;

    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("insert into usertable values(?,?,?,?,?,?)");
        ps.setString(1, user);
        ps.setString(2, password);
        ps.setString(3, address);
        ps.setString(4, nid);
        ps.setString(5, phone);
        ps.setString(6, type);
        ps.executeUpdate();

        PreparedStatement psaccount=con.prepareStatement("insert into account (NID,phone,balance) values ('"+nid+"','"+phone+"','"+balance+"')");

//        Statement st = con.createStatement();
//        ResultSet rs=st.executeQuery();
//
//        psaccount.setString(1,nid);
//        psaccount.setString(2,phone);
        psaccount.executeUpdate();
        response.sendRedirect("signup.jsp?msg=successful");
    }
    catch (Exception e){
        e.printStackTrace();
        response.sendRedirect("signup.jsp?msg=error");

    }


%>