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
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <jsp:include page="../layout/sidebar.jsp" />
                </div>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container mt-5">
                            <div>
                                <div class="col-md-6 col-12 mx-auto">
                                    <h1>UPDATE USER</h1>

                                    <form:form method="post" action="/admin/user/update" modelAttribute="newUser">
                                        <div class="mb-3">
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
                                                                <li class="list-group-item">Phone : ${user.phoneNumber}
                                                                </li>
                                                                <li class="list-group-item">Address : ${user.address}
                                                                </li>
                                                            </c:if>
                                                            <c:if test="${empty user}">
                                                                <p>User not found</p>
                                                            </c:if>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                    </main>
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>


        </body>


        </html>