<%-- 
    Document   : updateManga.jsp
    Created on : Nov 27, 2019, 3:14:50 PM
    Author     : hieule
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view mangas</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <h1>View Mangas</h1>
        <br>
        <form action="index.jsp" method="post">
            <input type="submit" name="back" value="back" />
        </form>
        
        <br>
        <table border="1">
            <tr>
                <td>No.</td>
                <td>manga name</td>
                <td>price</td>
                <td>description</td>
                <td>author name</td>
            </tr>
            <c:forEach var="manga" items="${requestScope.mangas}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${manga.mangaName}</td>
                    <td>${manga.price}</td>
                    <td>${manga.des}</td>
                    <td>${manga.authorName}</td>
                    
                    <form action="updateManga.jsp" method="post">
                        <input type="hidden" name="header" value="Update manga" />
                        <input type="hidden" name="button" value="update" />
                        <input type="hidden" name="manga_id" value="${manga.id}" />
                        <input type="hidden" name="manga_name" value="${manga.mangaName}" />
                        <input type="hidden" name="price" value="${manga.price}" />
                        <input type="hidden" name="des" value="${manga.des}" />
                        <input type="hidden" name="author_name" value="${manga.authorName}" />
                        <td><input type = "submit" name="edit" value="edit"/></td>
                    </form>
                    <form action="deleteManga.jsp" method="post">
                        <input type="hidden" name="header" value="Delete manga" />
                        <input type="hidden" name="button" value="delete" />
                        <input type="hidden" name="manga_id" value="${manga.id}" />
                        <input type="hidden" name="manga_name" value="${manga.mangaName}" />
                        <input type="hidden" name="price" value="${manga.price}" />
                        <input type="hidden" name="des" value="${manga.des}" />
                        <input type="hidden" name="author_name" value="${manga.authorName}" />
                        <td><input type = "submit" name="delete" value="delete"/></td>
                    </form>
                </tr>
            </c:forEach>
        </table>
        
        <form action="updateManga.jsp" method="post">
            <input type="hidden" name="header" value="Add manga" />
            <input type="hidden" name="button" value="add" />
            <input type="submit" name="addManga" value="add manga"/>
        </form>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
