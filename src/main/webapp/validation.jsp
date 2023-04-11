<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error.jsp" %>


<%
    String nid=request.getParameter("nid");
    String pass=request.getParameter("password");
    String uname=request.getParameter("name");

    int z=0;

    try {

        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
//        while(1==1){
            ResultSet rs = st.executeQuery("SELECT * from usertable WHERE NID='" + nid + "' and password= '" + pass + "' ");

            z=0;
            if (rs.next()) {

                session.setAttribute("NID", nid);
                z=1;
                response.sendRedirect("home.jsp");
            }else {
                response.sendRedirect("index.jsp?msg=notfound");
            }


//        }
//        if (z==0){
//
//        }






    }catch (Exception e){
        response.sendRedirect("index.jsp?msg=error");
    }




%>


