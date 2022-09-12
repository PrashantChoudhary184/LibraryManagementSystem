<%-- 
    Document   : b
    Created on : 03-Aug-2022, 6:16:28 PM
    Author     : Prashant Choudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form name="f1" method="get" action="#">
       <select name="clr">
           <option>Red</option>
           <option>Blue</option>   
           <option>Green</option>
           <option>Pink</option>
       </select>
     <input type="submit" name="submit" value="Select Color"/>
    </form>
    <%-- To display selected value from dropdown list. --%>
     <% 
                String s=request.getParameter("clr");
                if (s !=null)
                {
                    out.println("Selected Color is : "+s);
                }
      %>
</body>
</html>
