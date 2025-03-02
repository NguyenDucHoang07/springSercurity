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

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

                <!-- <script>
                    function togglePasswordVisibility() {
                        const passwordField = document.getElementById('passWord');
                        const passwordToggle = document.getElementById('passwordToggle');
                        passwordField.type = passwordToggle.checked ? 'text' : 'password';
                    }
                </script> -->
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
                                                <label for="id" class="form-label">ID</label>
                                                <form:input type="text" class="form-control" path="id"
                                                    aria-describedby="idlHelp" />

                                            </div>

                                            <div class="mb-3">
                                                <label for="email" class="form-label">Email address</label>
                                                <form:input type="email" class="form-control" path="email"
                                                    aria-describedby="emailHelp" disabled="true" />

                                                <div id="emailHelp" class="form-text">We'll never share your email with
                                                    anyone else.
                                                </div>
                                            </div>




                                            <div class="mb-3">
                                                <label for="phoneNumber" class="form-label">PhoneNumber</label>
                                                <form:input type="tel" class="form-control" path="phoneNumber" />
                                            </div>

                                            <div class="mb-3">
                                                <label for="fullName" class="form-label">Full name</label>
                                                <form:input type="text" class="form-control" path="fullName" />
                                            </div>

                                            <div class="mb-3">
                                                <label for="address" class="form-label">Adress</label>
                                                <form:input type="text" class="form-control" path="address" />
                                            </div>



                                            <button type=" submit" class="btn btn-primary">Submit</button>
                                        </form:form>
                                        <input class="form-control" id="disabledInput" type="text"
                                            placeholder="Disabled input here..." disabled>

                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>


            </body>


            </html>