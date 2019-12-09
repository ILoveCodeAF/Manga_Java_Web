<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Home page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@ include file="header.jsp" %>
    </head>
    <body>
        <h1>Manga Home</h1>
        <br>
        <br>
        <!--<p><%=getServletContext().getMajorVersion() %>.<%=getServletContext().getMinorVersion()%></p>-->
        <a href="/Manga/viewManga.jsp">View manga</a>
        <br>
        <%@ include file="footer.jsp" %>
    </body>
</html>
