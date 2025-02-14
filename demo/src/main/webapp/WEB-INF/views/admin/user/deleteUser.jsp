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

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h1>DELETE USER ID : ${id}</h1>
                            <div class="alert alert-danger" role="alert">
                                A simple danger alert—check it out!
                            </div>

                            <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">
                                <div class="mb-3">
                                    <label for="id" class="form-label">ID</label>
                                    <form:input type="text" class="form-control" path="id" aria-describedby="idlHelp" />

                                </div>
                                <button type=" submit" class="btn btn-primary">Submit</button>
                            </form:form>



                        </div>
                    </div>
                </div>
            </body>

            </html>