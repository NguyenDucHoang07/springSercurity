<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h1>CREATE USER</h1>

                            <form:form method="post" action="/admin/users/create" modelAttribute="newUser">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <form:input type="email" class="form-control" path="email"
                                        aria-describedby="emailHelp" />
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <form:input type="password" class="form-control" path="passWord" />
                                </div>

                                <div class="mb-3">
                                    <label for="examplePhoneNumber" class="form-label">PhoneNumber</label>
                                    <form:input type="tel" class="form-control" path="phoneNumber" />
                                </div>

                                <div class="mb-3">
                                    <label for="exampleFullname" class="form-label">Full name</label>
                                    <form:input type="text" class="form-control" path="fullName" />
                                </div>

                                <div class="mb-3">
                                    <label for="exampleAdress" class="form-label">Adress</label>
                                    <form:input type="text" class="form-control" path="address" />
                                </div>



                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form:form>
                            <input class="form-control" id="disabledInput" type="text"
                                placeholder="Disabled input here..." disabled>

                        </div>
                    </div>
                </div>
            </body>

            </html>