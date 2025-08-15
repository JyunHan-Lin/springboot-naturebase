<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>

</head>
<body class="view fontstyle">

    <!-- menu bar include -->
	<%@ include file="/WEB-INF/view/navbar-logout.jspf"%>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card border-danger text-center">
                    <div class="card-header bg-danger text-white">
                        註冊失敗
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-danger">認證失敗...請重新註冊</h5>
                        <a href="/register" class="btn btn-primary mt-3">回註冊頁</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
