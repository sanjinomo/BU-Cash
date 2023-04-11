<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>
<%
  try {
    String uNID=(String)session.getAttribute("NID").toString();

    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * from usertable WHERE NID='" + uNID + "'");

    while(rs.next()){
      String uName=rs.getString("name");
      String uPhone=rs.getString("phone");
      String name="sanji";

    }

    response.sendRedirect("signup.jsp?msg=successful");
  }
  catch (Exception e){
    response.sendRedirect("signup.jsp?msg=error");
  }
%>

