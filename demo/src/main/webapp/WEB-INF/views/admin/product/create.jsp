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

                <script src="https://www.geeksforgeeks.org/preview-an-image-before-uploading-using-jquery/"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $('#avatarFile');
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $('#avatarPreview').attr('src', imgURL);
                            $('#avatarPreview').css({ 'display': 'block' });

                        });
                    });


                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <div id="layoutSidenav_nav">
                        <jsp:include page="../layout/sidebar.jsp" />
                    </div>
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="mt-5">
                                <div>
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h1>CREATE PRODUCT</h1>

                                        <form:form method="post" action="/admin/product/create"
                                            modelAttribute="newProduct" class="row g-3" enctype="multipart/form-data">
                                            <div class="col-md-6">
                                                <label for="name" class="form-label">Name</label>
                                                <form:input type="text" class="form-control" path="name"
                                                    aria-describedby="emailHelp" />
                                                <!-- <div id="emailHelp" class="form-text">We'll never share your email with
                                            anyone else.
                                        </div> -->
                                            </div>
                                            <div class="col-md-6">
                                                <label for="price" class="form-label">Price</label>
                                                <form:input type="number" class="form-control" path="price" />
                                            </div>

                                            <div class="col-12">
                                                <label for="detailDesc" class="form-label">Detai description</label>
                                                <form:input type="text" class="form-control" path="detailDesc" />
                                            </div>

                                            <div class="col-md-6">
                                                <label for="shortDesc" class="form-label">Short description</label>
                                                <form:input type="text" class="form-control" path="shortDesc" />
                                            </div>

                                            <div class=" col-md-6 ">
                                                <label for="quantity" class="form-label">Quantity</label>
                                                <form:input type="number" class="form-control" path="quantity" />
                                            </div>

                                            <!-- <div class=" col-12 ">
                                                <label for="target" class="form-label">Targer</label>
                                                <form:input type="number" class="form-control" path="target" />
                                            </div> -->




                                            <div class="col-md-6">
                                                <label class="form-label">Factory</label>
                                                <form:select class="form-select" path="factory">
                                                    <form:option value="ADMIN">ADMIN</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                </form:select>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Target</label>
                                                <form:select class="form-select" path="target">
                                                    <form:option value="ADMIN">ADMIN</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                </form:select>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="avatarFile" class="form-label">Default file input
                                                    example</label>
                                                <input type="file" class="form-control" id="avatarFile"
                                                    accept=".png, .jpg, .jpeg" name="File" />
                                            </div>

                                            <div class="col-12 mb-3">
                                                <img style="max-height: 250px; display: none; " alt="avatar"
                                                    id="avatarPreview" />
                                            </div>


                                            <div class="col-12">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </form:form>
                                        <input class="form-control" id="disabledInput" type="text"
                                            placeholder="Disabled input here..." disabled>

                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </body>

            </html>