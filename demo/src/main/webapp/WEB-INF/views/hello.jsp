<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
        </head>

        <body>
            <h1>USER LIST</h1>
            <c:if test="${not empty UserList}">
                <ul>
                    <c:forEach var="user" items="${UserList}">
                        <li>${user.name} - Age : ${user.age}</li>
                    </c:forEach>
                </ul>
            </c:if>
        </body>

        </html>