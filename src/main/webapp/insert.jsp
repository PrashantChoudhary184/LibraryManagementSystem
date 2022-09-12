<%-- 
    Document   : insert
    Created on : 12-Aug-2022, 12:08:43 AM
    Author     : Prashant Choudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%! Connection con;
    
           Statement stmt;
          int count=0;
            
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert</title>
    <link rel="stylesheet" href="style6.css">
</head>
<body>
    <%! void connectDB()
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
        
    } 
     %>   
     
     <%
        
            connectDB();
             try
           {
            stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("Select* From book");
           while(rs.next())
           {
            count++;
           }

            
                                  %>
    <div class="back">
       
    </div>
    <div class="page">
        <h2>Insert Book</h2>
        <form method="post" action="form3.jsp">
            <input type="number" name="a" value="<%=count%>" placeholder="Enter SNo.">
            <%          }
                   catch(Exception e)
                   {
                           
                   }              %>
        <input type="text" name="b" placeholder="Enter Book Name">
        <input type="text" name="c" placeholder="Enter Author Name">
        <input type="text" name="d" placeholder="Enter Publisher Name">
        <input type="number" name="e" placeholder="Enter Number of Copies">
        <button class="btn"><a href="#">Insert</a></button><br>
        </form>
    </div>
   

</body>
</html>
