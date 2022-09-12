/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Prashant Choudhary
 */
import java.sql.*;

class Connect 
{
    Connection con;
    
    Connection connectDB()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e){}
        try
        {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root","prashant");
        }
        catch(SQLException e)
        {
            
        }
        System.out.print("connection found  :  "+con);
        return(con);
    }
    public static void main(String args[])
    {
        Connect c2=new Connect();
        c2.connectDB();
    }
    
}
