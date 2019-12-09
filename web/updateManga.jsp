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
        <title>${param["header"]}</title>
        <%@include file="header.jsp" %>
    </head>
    <body>
        <h1>${param["header"]}</h1>
        <br>
        <form action="${pageContext.request.contextPath}/viewMangaServlet" method="post">
            <input type="submit" name="back" value="back" />
        </form>
        <br>
        <script>
            function checkform(form) {
//                 get all the inputs within the submitted form
                var inputs = form.getElementsByTagName('input');
                for (var i = 0; i < inputs.length; i++) {
                    // only validate the inputs that have the required attribute
                    if(inputs[i].hasAttribute("required")){
                        if(inputs[i].value === ""){
                            // found an empty field that is required
                            alert("Please fill all required fields");
                            return false;
                        }
                    }
                }
                return true;
            }
        </script>
        <form action="${pageContext.request.contextPath}/UpdateMangaServlet" 
              method="post" onsubmit="return checkform(this)">
            <table>
                <tr>
                    <td align="right">manga name</td>
                    <td><input type="text" name="manga_name" value="${param["manga_name"]}" required/></td>
                </tr>
                <tr>
                    <td align="right">price:</td>
                    <td><input type="text" name="manga_price" value="${param["price"]}" required/></td>
                </tr>
                <tr>
                    <td align="right">description:</td>
                    <td><input type="text" name="manga_des" value="${param["des"]}" /></td>
                </tr>
                <tr>
                    <td align="right">author name:</td>
                    <td><input type="text" name="author_name" value="${param["author_name"]}" required/></td>
                </tr>
                <input type="hidden" name="manga_id" value="${param["manga_id"]}"/>
            </table>
            <input class="submit" type="submit" name="update" value="${param["button"]}"/>
        </form>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
