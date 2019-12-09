<%-- 
    Document   : deleteManga.jsp
    Created on : Dec 9, 2019, 5:34:51 PM
    Author     : hieule
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>a${param["header"]}</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <h1>${param["header"]}</h1>
        <br>
        <form action="${pageContext.request.contextPath}/viewMangaServlet" method="post">
            <input type="submit" name="back" value="back" />
        </form>
        <br>
        
        <form action="${pageContext.request.contextPath}/UpdateMangaServlet" 
              method="post" onsubmit="return checkform(this)">
            <table>
                <tr>
                    <td align="right">manga name</td>
                    <td>${param["manga_name"]}</td>
                    <input type="hidden" name="manga_name" value="${param["manga_name"]}" />
                </tr>
                <tr>
                    <td align="right">price:</td>
                    <td>${param["price"]}</td>
                    <input type="hidden" name="manga_price" value="${param["price"]}" />
                </tr>
                <tr>
                    <td align="right">description:</td>
                    <td>${param["des"]}</td>
                    <input type="hidden" name="manga_des" value="${param["des"]}" />
                </tr>
                <tr>
                    <td align="right">author name:</td>
                    <td>${param["author_name"]}</td>
                    <input type="hidden" name="author_name" value="${param["author_name"]}" />
                </tr>
                <input type="hidden" name="manga_id" value="${param["manga_id"]}"/>
            </table>
            <input class="submit" type="submit" name="update" value="${param["button"]}"/>
        </form>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>

