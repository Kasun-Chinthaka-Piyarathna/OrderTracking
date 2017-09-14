package hsenid.beyondm.chinthaka;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;

/**
 * Created by chinthaka on 9/12/17.
 */
public class JdbcTest1 {
    public static Connection conn;

    //TODO following JAVA DOC should describe the functionality of the method
    /**
     * Establish the connection with the DB.
     * @param null
     * return null
     */
     void checkconnection () {
        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception!");
            System.err.println(e.getMessage());
        }
    }
}
