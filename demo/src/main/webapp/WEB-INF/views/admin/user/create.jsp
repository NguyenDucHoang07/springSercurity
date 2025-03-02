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
                    $(document).ready(() => {  //Đảm bảo rằng mã JavaScript chỉ chạy sau khi toàn bộ trang HTML đã tải xong.
                        const avatarFile = $('#avatarFile');  //Lấy phần tử có id="avatarFile"
                        avatarFile.change(function (e) {        //Khi người dùng chọn ảnh mới, sự kiện change sẽ kích hoạt.
                            const imgURL = URL.createObjectURL(e.target.files[0]);  //Lấy tệp ảnh đầu tiên mà người dùng đã chọn.Tạo một URL tạm thời để hiển thị ảnh.
                            $('#avatarPreview').attr('src', imgURL);  //Gán URL của ảnh mới vào thuộc tính src của <img>.
                            $('#avatarPreview').css({ 'display': 'block' }); //Hiển thị ảnh (phòng trường hợp ban đầu bị ẩn display: none).


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
                                        <h1>CREATE USER</h1>

                                        <form:form method="post" action="/admin/users/create" modelAttribute="newUser"
                                            class="row g-3" enctype="multipart/form-data">
                                            <div class="col-md-6">
                                                <label for="email" class="form-label">Email address</label>
                                                <c:set var="emailClass"
                                                    value="${not empty errors['email'] ? 'is-invalid' : ''}" />

                                                <form:input type="email" class="form-control ${emailClass}" path="email"
                                                    aria-describedby="emailHelp" />
                                                <form:errors path="email" cssClass="invalid-feedback" />

                                            </div>
                                            <div class="col-md-6">
                                                <c:set var="errorPassword">
                                                    <form:errors path="passWord" cssClass="invalid-feedback" />
                                                </c:set>
                                                <label for="passWord" class="form-label">Password</label>

                                                <form:input type="password"
                                                    class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                    path="passWord" />
                                                ${errorPassword}
                                            </div>

                                            <div class="col-md-6">
                                                <label for="phoneNumber" class="form-label">PhoneNumber</label>
                                                <form:input type="tel" class="form-control" path="phoneNumber" />
                                            </div>

                                            <div class="col-md-6">
                                                <label for="fullName" class="form-label">Full name</label>
                                                <form:input type="text" class="form-control" path="fullName" />
                                            </div>

                                            <div class=" col-12 ">
                                                <label for="address" class="form-label">Adress</label>
                                                <form:input type="text" class="form-control" path="address" />
                                            </div>

                                            <div class="col-md-6">
                                                <label for="avatarFile" class="form-label">Default file input
                                                    example</label>
                                                <input type="file" class="form-control" id="avatarFile"
                                                    accept=".png, .jpg, .jpeg" name="File" />
                                            </div>
                                            <div class="col-md-6">
                                                <label class="form-label">Role</label>
                                                <form:select class="form-select" path="role.name">
                                                    <form:option value="ADMIN"></form:option>
                                                    <form:option value="USER">USER</form:option>
                                                </form:select>
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
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>


            </body>



            </html>