<%-- 
    Document   : index
    Created on : 08-Aug-2022, 6:36:31 PM
    Author     : Prashant Choudhary
--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
   <div class="main">
    <div class="navbar">
        <div class="icon">
            <h2 class="logo">Library</h2>
   </div> 
   <div class="menu">
             <ul>
                  <li><a href="index.jsp">HOME</a></li>
                  <li><a href="#">ABOUT</a></li>
                  <li><a href="#">SERVICE</a></li>
                  <li><a href="#">FACILITIES</a></li>
                  <li><a href="#">CONTACT</a></li>
             </ul>
   </div>
   
   
   <div class="search">
       <form action="form6.jsp">
         <input class="srch" type="search" name="search" placeholder="Search Book">
         <a href="#"><button class="btn">Search</button></a>
       </form>
   </div>
    </div>
   <div class="content">
        <h1>Library <br><span>Management</span><br>System</h1><br>
        <p class="par">Welcome To Library Management System</p>
        <button class="cn"><a href="explore.jsp">EXPLORE LIBRARY</a></button>

        <div class="form">
            <h2>Login Here</h2>
            
            <form method="post" action="form1.jsp">
            <input type="email" name="email" placeholder="Enter Email Here">
            <input type="password" name="b" placeholder="Enter Password Here">
            
            
            
            <button class="btnn"><a>Login</a></button><br>
            </form>
            
            
            <p class="link">Don't have an account<br>
            <a href="signup.jsp">Sign up </a> here</p>
     
            

           </div>
       </div>
   </div>
</body>
</html>

