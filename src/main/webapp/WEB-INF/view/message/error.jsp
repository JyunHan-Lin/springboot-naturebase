<%@ page language="java" isErrorPage="true" contentType="text/html; charset=UTF-8"
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
                <div class="card text-center border-danger">
                    <div class="card-header bg-danger text-white">
                        發生錯誤
                    </div>
                    <div class="card-body">
                        <p class="card-text text-danger">${message}</p>
                        <p class="card-text"><%= exception %></p>
                        <a href="/naturebase" class="btn btn-primary mt-3">回到首頁</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
