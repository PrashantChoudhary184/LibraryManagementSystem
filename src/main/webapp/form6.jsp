<%-- 
    Document   : form6
    Created on : 29-Aug-2022, 11:06:08 PM
    Author     : Prashant Choudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.swing.*" %>
<%! Connection con;
    
           Statement stmt;
           
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! void connectDB()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e)
        {
        }
        
        try
        {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root","prashant");
        }
        catch(SQLException e)
        {
            
        }
        System.out.print("connection found  :  "+con);
        
    } 
     %>
     
     <%

        connectDB();
        
        try
           {
            stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("Select* From book where book_name = '"+request.getParameter("search")+"' ");
         
         if(rs.next())
         {
         
        JOptionPane.showMessageDialog(null,"Book Available");
            
        }
        else
         {
         JOptionPane.showMessageDialog(null,"Book Not Available");
        }
        }
        catch(Exception e)
        {
        
        }
        response.sendRedirect("index.jsp");
     %>
        
    </body>
</html>
