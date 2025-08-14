<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
	<script src="/js/register.js"></script>
</head>

<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-logout.jspf" %>

	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card shadow-sm">
					<div class="card-header text-center">
						<h2>會員註冊</h2>
					</div>
					
					<div class="card-body">
						<form method="POST" action="/register">
							<div class="mb-3">
								<label for="username" class="form-label">帳號</label>
								<input type="text" class="form-control" id="username" name="username" placeholder="請輸入4位數以上帳號名稱" required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">密碼</label>
								<input type="password" class="form-control" id="password" name="password" placeholder="請輸入6位數以上密碼" required>
							</div>
							<div class="mb-3">
								<label for="confirmPassword" class="form-label">再次輸入密碼</label>
								<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="請再輸入一次密碼" required>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">電子郵件</label>
								<input type="email" class="form-control" id="email" name="email" placeholder="請輸入電子郵件" required>
							</div>
							<div class="d-flex justify-content-between">
								<button type="reset" class="btn btn-secondary">重置</button>
								<button type="submit" class="btn btn-primary">註冊</button>
							</div>
						</form>
					</div>
					<div class="card-footer text-center">
						<a href="/login">回登入頁</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
