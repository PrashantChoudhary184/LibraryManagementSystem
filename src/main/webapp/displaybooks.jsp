<%-- 
    Document   : displaybooks
    Created on : 22-Aug-2022, 10:49:25 PM
    Author     : Prashant Choudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%! Connection con;
    
           Statement stmt;
          
            
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Books</title>
    <link rel="stylesheet" href="style9.css">
</head>
<body>
  <div class="ab">
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
     <%  connectDB(); 
          try
           {
            stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("Select* From book");
         
                            %>
  <h2>Display Books</h2>
    <table class="content-table">
        <thead>
          <tr>
            <th>Book Name</th>
            <th>Author</th>
            <th>Publisher</th>
            <th>Noca</th>
          </tr>
        </thead>
        <tbody>
            <% while(rs.next())
              {
                 %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
          </tr>
           <% }
             }
            catch(Exception e)
             {

               }           %>
        </tbody>
      </table>
  
  </div>
</body>
</html>
