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
                <div class="card border-success text-center">
                    <div class="card-header bg-success text-white">
                        註冊成功
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-success">恭喜！您已成功註冊。</h5>
                        <a href="/login" class="btn btn-primary mt-3">回登入頁</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
                        
