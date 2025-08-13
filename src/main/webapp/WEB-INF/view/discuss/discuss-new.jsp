<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OrniBase</title>
    <link rel="icon" type="image/png" href="/images/icon.png">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 自訂 CSS -->
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/form.css">
</head>
<body class="fontstyle">

    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-mini.jspf" %>

    <div class="container my-4">
        <!-- 討論表單 -->
        <%@ include file="/WEB-INF/view/discuss/discuss-form.jspf" %>
    </div>

</body>
</html>
