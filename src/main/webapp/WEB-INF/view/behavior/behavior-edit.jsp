<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
</head>
<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-login.jspf"%>

	<div class="container my-5">
		<div class="card shadow-sm">
			<div class="card-header text-center">
				<h2>編輯行為紀錄</h2>
				<span class="text-danger">* 必填欄位</span>
			</div>
			<div class="card-body">
				<sp:form method="post" modelAttribute="behaviorDTO"
					action="/naturebase/discuss/behavior/${behaviorDTO.discussId}/edit/${behaviorDTO.behaviorId}">
					<input type="hidden" name="_method" value="PUT" />

					<div class="mb-3 row">
						<label for="date" class="col-sm-3 col-form-label">日期 *</label>
						<div class="col-sm-9">
							<sp:input path="date" type="date" class="form-control" required="required"/>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">時間 *</label>
						<div class="col-sm-9 d-flex align-items-center gap-2">
							<sp:input path="startTime" type="time" class="form-control" required="required" />
							<span>～</span>
							<sp:input path="endTime" type="time" class="form-control" required="required" />
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">對象 *</label>
						<div class="col-sm-9">
							<sp:select path="subject" class="form-select" required="required">
								<sp:option value="" label="請選擇對象" />
								<sp:option value="母鳥" />
								<sp:option value="公鳥" />
								<sp:option value="幼鳥A" />
								<sp:option value="幼鳥B" />
								<sp:option value="幼鳥C" />
								<sp:option value="幼鳥D" />
								<sp:option value="幼鳥E" />
								<sp:option value="鄰居" />
							</sp:select>
						</div>
					</div>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">行為 *</label>
						<div class="col-sm-9">
							<sp:select path="action" class="form-select" required="required">
								<sp:option value="" label="請選擇行為" />
								<sp:option value="飛行" />
								<sp:option value="餵食" />
								<sp:option value="獨自進食" />
								<sp:option value="睡覺" />
								<sp:option value="排遺" />
								<sp:option value="進巢" />
								<sp:option value="出巢" />
								<sp:option value="送餐" />
								<sp:option value="開傘" />
								<sp:option value="警戒" />
								<sp:option value="其他" />
							</sp:select>
						</div>
					</div>

					<hr>

					<div class="mb-3 row">
						<label class="col-sm-3 col-form-label">食物</label>
						<div class="col-sm-9">
							<sp:select path="food" class="form-select">
								<sp:option value="" label="請選擇食物" />
								<sp:option value="哺乳類" />
								<sp:option value="鳥類" />
								<sp:option value="魚類" />
								<sp:option value="爬蟲類" />
								<sp:option value="兩生類" />
								<sp:option value="昆蟲" />
								<sp:option value="節肢動物" />
								<sp:option value="軟體動物" />
								<sp:option value="果實" />
								<sp:option value="種子" />
							</sp:select>
						</div>
					</div>

					<div class="mb-3 row">
						<label for="temperature" class="col-sm-3 col-form-label">溫度(℃)</label>
						<div class="col-sm-9">
							<sp:input path="temperature" type="text" class="form-control" placeholder="輸入溫度(℃)" />
						</div>
					</div>

					<div class="mb-3 row">
						<label for="note" class="col-sm-3 col-form-label">備註</label>
						<div class="col-sm-9">
							<sp:textarea path="note" class="form-control" maxlength="100" placeholder="限100字內" rows="3"/>
						</div>
					</div>

					<div class="d-flex justify-content-between mt-4">
						<button type="submit" class="btn btn-primary">送出</button>
						<a href="/nature/discuss/behavior/${discussDTO.discussId}/list" class="btn btn-outline-secondary">查看紀錄清單</a>
					</div>

				</sp:form>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
