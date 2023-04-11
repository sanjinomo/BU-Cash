

<%@include file="validation.jsp"%>
<%@include file="updatepage.jsp"%>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
    String uNID=(String)session.getAttribute("NID").toString();
    String details=request.getParameter("value");
    String column=request.getParameter("drop");

    try {
        Connection con = ConnectionProvider.getCon();
//        PreparedStatement ps = con.prepareStatement("UPDATE usertable SET '"+request.getParameter("drop")+"' = ? WHERE NID='" + uNID + "'");
//        ps.setString(1, request.getParameter("value"));
//

//        ps.executeUpdate();


        if (column.equals("name")) {
            PreparedStatement ps1 = con.prepareStatement("UPDATE usertable SET name = ? WHERE NID='" + uNID + "'");
            ps1.setString(1, details);
            ps1.executeUpdate();
        }
        if (column.equals("password")) {
            PreparedStatement ps2 = con.prepareStatement("UPDATE usertable SET password = ? WHERE NID='" + uNID + "'");
            ps2.setString(1, request.getParameter("value"));
            ps2.executeUpdate();
        }
        if (column.equals("address")) {
            PreparedStatement ps3 = con.prepareStatement("UPDATE usertable SET address = ? WHERE NID='" + uNID + "'");
            ps3.setString(1, request.getParameter("value"));
            ps3.executeUpdate();
        }
        if (column.equals("phone")) {
            PreparedStatement ps4 = con.prepareStatement("UPDATE usertable SET phone = ? WHERE NID='" + uNID + "'");
            ps4.setString(1, request.getParameter("value"));
            ps4.executeUpdate();
        }


        response.sendRedirect("accountinfo.jsp?msg=successful");
    }
    catch (Exception e){
        response.sendRedirect("updatepage.jsp?msg=error");
    }

%>
<%=column%>
<%=details%>