package Project;
import java.sql.*;
public class ConnectionProvider {
    public static Connection getCon(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bucash","root","root");
            return con;
        }catch (Exception e){
            System.err.print(e);
            return null;

        }
    }
}
