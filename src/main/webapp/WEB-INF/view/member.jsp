<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/form.css">
    <title>OrniBase</title>
    <link rel="icon" type="image/png" href="/images/icon.png">
    <script src="/js/member.js"></script>
</head>
<body class="fontstyle">
    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-mini.jspf" %>

    <div class="container mt-4">
        <form method="POST" action="/ornibase/member" class="card shadow-sm p-4">
            <h2 class="mb-4">會員資料變更</h2>

            <h5 class="mb-3">密碼變更</h5>

            <div class="mb-3">
                <label for="oldpassword" class="form-label">輸入舊密碼</label>
                <input type="password" class="form-control" id="oldpassword" name="oldPassword" placeholder="請輸入舊密碼" required>
            </div>

            <div class="mb-3">
                <label for="newpassword1" class="form-label">輸入6位數以上新密碼</label>
                <input type="password" class="form-control" id="newpassword1" name="newPassword" placeholder="請輸入新密碼" required>
            </div>

            <div class="mb-3">
                <label for="newpassword2" class="form-label">再輸入一次新密碼</label>
                <input ty
