<%-- 
    Document   : error
    Created on : Nov 27, 2019, 2:36:33 PM
    Author     : hieule
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
        <%@ include file="header.jsp" %>
    </head>
    <body>
        <h1>404 not found!</h1>
        <br>
        <form method="post" action="index.jsp">
            <input type="submit" value="home" name="home"/>
        </form>
        <%@ include file="footer.jsp" %> 
    </body>
</html>
