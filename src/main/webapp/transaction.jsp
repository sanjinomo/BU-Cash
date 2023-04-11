<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@ page import="java.util.UUID" %>
<%@page errorPage="error.jsp" %>
<%@page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--<%@include file="validation.jsp" %>--%>

<%
    String uNID=(String)session.getAttribute("NID").toString();
    String pass=request.getParameter("pin");
    String type=request.getParameter("type");
    String rectype="";
    float tamount=Float.parseFloat(request.getParameter("amount"));
    String rNID=request.getParameter("nid");

    float user_balance=0;
    float reciever_balance=0;
    float final_amount=0;
    String uniqueID= UUID.randomUUID().toString();
    String temp=uniqueID;
    String txid="";
//    String date="";
    String time="";


        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        Date date=new Date();
        SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

        time=formatter.format(date);



        ResultSet rs = st.executeQuery("SELECT * from usertable WHERE NID='" + uNID + "' and password= '" + pass + "' " );
        ResultSet rs2 = st.executeQuery("SELECT * from account WHERE NID='" + uNID + "'" );

        while (rs2.next()) {
//            rs2.next();
            user_balance = rs2.getFloat("balance");

        }
//    System.out.println(user_balance);
//        rs2.close();

        ResultSet reciever_rs = st.executeQuery("SELECT balance from account WHERE NID='" + rNID + "'");
        while (reciever_rs.next()) {
            reciever_balance = reciever_rs.getFloat("balance");
        }
//        reciever_rs.close();


        if (tamount <= user_balance) {
            final_amount = user_balance - tamount;
//            ResultSet rs3=st.executeQuery("UPDATE account SET balance='" + final_amount + "' WHERE NID='" + uNID + "'");
//            rs3.next();
            PreparedStatement rsUserBALup = con.prepareStatement("UPDATE account SET balance='" + final_amount + "' WHERE NID='" + uNID + "'");
            rsUserBALup.executeUpdate();
            ResultSet txidset = st.executeQuery("SELECT * from transaction WHERE txid = '" + temp + "'");
            while (txidset.next()) {
                if (txidset.next() == false) {
                    txid = temp;
                    break;
                }
            }

            PreparedStatement psUser = con.prepareStatement("INSERT INTO transaction(txid,amount,NID,ONID,type,date) values ('" + uniqueID + "','" + tamount + "', '" + uNID + "', '" + rNID + "','" + type + "','" + time + "')");
            psUser.executeUpdate();

            if (type.equals("sendmoney")) {
                rectype = "recievedmoney";
            } else if (type.equals("cashout")) {
                rectype = "cashin";
            } else {
                rectype = "recievedpayment";
            }
            final_amount = tamount + reciever_balance;


            PreparedStatement psReciever = con.prepareStatement("INSERT INTO transaction(txid,amount,NID,ONID,type,date) values ('" + uniqueID + "','" + tamount + "', '" + rNID + "', '" + uNID + "','" + rectype + "','" + time + "')");
            psReciever.executeUpdate();
            PreparedStatement rsRecBALup = con.prepareStatement("UPDATE account SET balance='" + final_amount + "' WHERE NID='" + rNID + "'");
            rsRecBALup.executeUpdate();


            response.sendRedirect("Service.jsp?msg=successful");


        } else {


            response.sendRedirect("Service.jsp?msg=notsufficientbalance");
//        response.sendRedirect("test.jsp");

        }
















%>


