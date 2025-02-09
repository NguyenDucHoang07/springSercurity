<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <link rel="stylesheet" href="/css/demo.css">
        </head>

        <body>

            <div class="container mt-5">
                <div class="row">
                    <div class="col-12  mx-auto">
                        <div class="d-flex justify-content-between">

                            <h3>USER DETAIL : ${id}</h3>
                        </div>
                        <hr />
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                User Infomation
                            </div>
                            <c:if test="${not empty user}">
                                <li class="list-group-item">ID : ${user.id}</li>
                                <li class="list-group-item">Email : ${user.email}</li>
                                <li class="list-group-item">Phone : ${user.phoneNumber}</li>
                                <li class="list-group-item">Address : ${user.address}</li>
                            </c:if>
                            <c:if test="${empty user}">
                                <p>User not found</p>
                            </c:if>

                        </div>

                    </div>
                </div>
            </div>
        </body>

        </html>