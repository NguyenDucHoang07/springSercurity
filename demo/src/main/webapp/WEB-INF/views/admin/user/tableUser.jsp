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

                            <h3>Table user</h3>
                            <a href="" class="btn btn-primary">Create user</a>
                        </div>
                        <hr />
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Fullname</th>
                                    <th scope="col">Action</th>
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
                                        <td> <a href="/user/detail/${user.id}" class="btn btn-success">View</a>
                                        <td> <a href="/admin/user/update/${user.id}"
                                                class="btn btn-warning">Update</button>

                                        <td>
                                        <td>
                                            <a href="/admin/user/delete/${user.id}" class="btn btn-danger">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </body>

        </html>