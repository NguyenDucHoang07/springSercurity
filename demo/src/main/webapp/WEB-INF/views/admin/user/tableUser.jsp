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
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <div id="layoutSidenav_nav">
                        <jsp:include page="../layout/sidebar.jsp" />
                    </div>
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-12  mx-auto">
                                        <div class="d-flex justify-content-between">

                                            <h3>Table user</h3>
                                            <a href="/admin/user" class="btn btn-primary">Create user</a>
                                        </div>
                                        <hr />
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Email</th>
                                                    <th>Fullname</th>
                                                    <th colspan="3">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <!-- <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td>Otto</td>
                                                    <td>
                                                        <button class="btn btn-success">View</button>
                                                        <button class="btn btn-warning">Update</button>
                                                        <button class="btn btn-danger">delete</button>
                                                    </td>
                                                </tr> -->
                                                <c:forEach var="user" items="${dataUsser}">
                                                    <tr>
                                                        <td>${user.id}</td>
                                                        <td>${user.email}</td>
                                                        <td>${user.fullName}</td>
                                                        <td> <a href="/user/detail/${user.id}"
                                                                class="btn btn-success">View</a>
                                                        <td> <a href="/admin/user/update/${user.id}"
                                                                class="btn btn-warning">Update</a>

                                                        </td>
                                                        <td>
                                                            <a href="/admin/user/delete/${user.id}"
                                                                class="btn btn-danger">delete</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>

            </body>

        </html>