<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
    <script src="/js/member.js"></script>
</head>
<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-login.jspf"%>

    <div class="container mt-5">
        <form method="POST" action="/naturebase/member" class="card shadow p-4">
            <fieldset>
                <legend class="h3 mb-4 text-primary">會員資料變更</legend>

                <h5 class="mb-3">密碼變更</h5>

                <div class="mb-3">
                    <label for="oldpassword" class="form-label">輸入舊密碼</label>
                    <input type="password" class="form-control" id="oldpassword" name="oldPassword" placeholder="請輸入舊密碼" required>
                </div>

                <div class="mb-3">
                    <label for="newpassword1" class="form-label">輸入6位數以上新密碼</label>
                    <input type="password" class="form-control" id="newpassword1" name="newPassword" placeholder="請輸入新密碼" required>
                </div>

                <div class="mb-4">
                    <label for="newpassword2" class="form-label">再輸入一次新密碼</label>
                    <input type="password" class="form-control" id="newpassword2" name="confirmPassword" placeholder="再輸入一次新密碼" required>
                </div>

                <div class="d-flex gap-2">
                    <button type="reset" class="btn btn-secondary">重置</button>
                    <button type="submit" class="btn btn-primary">確認送出</button>
                </div>
            </fieldset>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
