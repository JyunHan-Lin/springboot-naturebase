<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${resultTitle}</title>
    <link rel="icon" type="image/png" href="/images/icon.png">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 自訂 CSS -->
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/user.css">
</head>
<body class="view fontstyle">

    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-pre.jspf" %>	

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card text-center">
                    <div class="card-header 
                        ${resultTitle == '成功' ? 'bg-success text-white' : 'bg-danger text-white'}">
                        ${resultTitle}
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">${resultMessage}</h5>
                        <a href="/ornibase" class="btn btn-primary mt-3">回到首頁</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
