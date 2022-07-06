<%-- 
    Document   : register
    Created on : 4 Jul, 2022, 7:55:55 PM
    Author     : Dell
--%>

<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.connection.DBconnect" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
<!--        <%
        Connection con =DBconnect.getCon();
        out.println(con);
        
        %>
        -->
        <div>
            <h1 class="text-center p-4">Welcome to Register Page</h1> 
        </div>
        <%
            String succesMeg =(String) session.getAttribute("Successfull");
            String errorMeg =(String) session.getAttribute("notresgitered");
            
            %>
            <p class="text-center"><%=succesMeg %></p>
            <p class="text-center"><%=errorMeg %></p>
        <div class="container card p-4">
            <form action="Register" method="post">
                <div class="form-group">
                    <label >Enter Your Name</label>
                    <input type="text" name="username" class="form-control" id="exampleInputEmail1"  placeholder="Enter Your Name">
                     </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your sPassword">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
