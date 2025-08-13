<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/user.css">
    <title>NatureBase</title>
    <link rel="icon" type="image/png" href="/images/icon.png">
</head>
<body class="fontstyle">
    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-pre.jspf" %>

    <div class="container my-5">
        <div class="content-wrapper">
            <h1 class="mb-4">OrniBase</h1>

            <div class="card shadow-sm">
                <div class="card-header">
                    <h2 class="h5 mb-0">登入或 <a href="/register" class="text-decoration-none">創建帳號</a></h2>
                </div>
                <div class="card-body">
                    <form method="POST" action="/login">
                        <!-- 帳號 -->
                        <div class="mb-3">
                            <label for="username" class="form-label">帳號</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder="請輸入帳號" required>
                        </div>

                        <!-- 密碼 -->
                        <div class="mb-3">
                            <label for="password" class="form-label">密碼</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="請輸入密碼" required>
                        </div>

                        <!-- 驗證碼 -->
                        <div class="mb-3 row g-2 align-items-center">
                            <div class="col">
                                <label for="authcode" class="form-label">驗證碼</label>
                                <input type="text" id="authcode" name="authcode" class="form-control" placeholder="請輸入驗證碼" required>
                            </div>
                            <div class="col-auto">
                                <img src="/user/authcode" title="驗證碼" alt="驗證碼" class="border rounded" style="cursor:pointer; height:38px;">
                            </div>
                        </div>

                        <script>
                            document.querySelector("img[title='驗證碼']").addEventListener("click", function() {
                                this.src = "/user/authcode?" + new Date().getTime(); // 防止快取
                            });
                        </script>

                        <!-- 按鈕 -->
                        <div class="d-flex justify-content-between">
                            <button type="reset" class="btn btn-outline-secondary">重置</button>
                            <button type="submit" class="btn btn-primary">登入</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
