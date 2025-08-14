<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
	<script>
        document.querySelector("img[title='驗證碼']").addEventListener("click", function() {
            this.src = "/user/authcode?" + new Date().getTime(); // 防止快取
        });
    </script>
</head>

<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-logout.jspf"%>

	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="content-wrapper">
					<h1 class="mb-4">NatureBase</h1>

					<div class="card shadow-sm">
						<div class="card-header">
							<h2 class="h5 mb-0">
								登入或 <a href="/register" class="text-decoration-none">註冊帳號</a>
							</h2>
						</div>

						<div class="card-body">
							<form method="POST" action="/login">
								<!-- 帳號 -->
								<div class="mb-3">
									<label for="username" class="form-label">帳號</label> <input
										type="text" id="username" name="username" class="form-control"
										placeholder="請輸入帳號" required>
								</div>

								<!-- 密碼 -->
								<div class="mb-3">
									<label for="password" class="form-label">密碼</label> <input
										type="password" id="password" name="password"
										class="form-control" placeholder="請輸入密碼" required>
								</div>

								<!-- 驗證碼 -->
								<div class="mb-3" style="gap:10px;">
								    <label for="authcode" class="form-label mb-0" style="min-width: 70px;">驗證碼</label>
								    <div class="d-flex align-items-center col">
									    <input type="text" id="authcode" name="authcode" class="form-control" placeholder="請輸入驗證碼" required style="max-width: 150px;">
									    <img src="/user/authcode" title="驗證碼" alt="驗證碼" class="border rounded" style="cursor: pointer; height: 38px; user-select:none;">
								    </div>
								</div>

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
		</div>
	</div>
</body>

</html>
