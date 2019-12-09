<%-- 
    Document   : updateManga.jsp
    Created on : Nov 27, 2019, 3:14:50 PM
    Author     : hieule
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view manga</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <h1>View Manga</h1>
        <br>
        <br>
        <form action="addManga.jsp" method="post">
            <input type="submit" name="addManga" value="add manga"/>
        </form>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
