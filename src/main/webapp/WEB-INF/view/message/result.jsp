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
