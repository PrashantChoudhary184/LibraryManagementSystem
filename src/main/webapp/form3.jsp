<%-- 
    Document   : form3
    Created on : 12-Aug-2022, 11:32:21 PM
    Author     : Prashant Choudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.swing.*" %>
<%! Connection con;
    
           Statement stmt;
            int noa=0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String str = request.getParameter("roll");%>
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
            noa =0;
            noa = noa+ Integer.parseInt(request.getParameter("e"));
           
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select* From book where book_name = '"+request.getParameter("b")+"'"); 
            
            
            if(rs.next())
            {   
                noa = noa+Integer.parseInt(rs.getString(4));
                stmt.executeUpdate("Update book set noca ='"+noa+"' where book_name ='"+request.getParameter("b")+"' ");
                JOptionPane.showMessageDialog(null,"Record Updated.....");
            }
            else
            {
                        
            stmt.executeUpdate("insert into book values('"+request.getParameter("b")+"','"+request.getParameter("c")+"' ,'"+request.getParameter("d")+"','"+request.getParameter("e")+"')");
            JOptionPane.showMessageDialog(null,"Record Saved.....");
            }
        }
            catch(Exception e)
                    {
                    
                    }
    
                response.sendRedirect("insert.jsp");
                

                                            

            
            %>
    </body>
</html>
