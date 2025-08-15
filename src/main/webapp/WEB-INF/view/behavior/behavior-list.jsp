<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
	<!-- jQuery & DataTables JS -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
	<script>
		function confirmDelete() {
			return confirm("確定要刪除這筆行為紀錄嗎？");
		}
	</script>
</head>
<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-login.jspf"%>

	<div class="container mt-4">
		<button onclick="history.back()" class="btn btn-danger mb-3">回上一頁</button>

		<div class="card shadow-sm">
			<div class="card-header bg-danger text-white">
				<h4 class="mb-0">行為紀錄</h4>
			</div>
			<div class="card-body">
				<table id="behaviorTable" class="table table-striped table-bordered">
					<thead class="table-dark">
						<tr>
							<th>記錄者</th>
							<th>行為日期</th>
							<th>開始時間</th>
							<th>結束時間</th>
							<th>對象</th>
							<th>行為</th>
							<th>食物</th>
							<th>溫度</th>
							<th>備註</th>
							<th>記錄日期</th>
							<th>編輯</th>
							<th>刪除</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="behaviorDTO" items="${behaviorList}">
							<tr>
								<td>${behaviorDTO.creatorName}</td>
								<td>${behaviorDTO.date}</td>
								<td>${behaviorDTO.startTime}</td>
								<td>${behaviorDTO.endTime}</td>
								<td>${behaviorDTO.subject}</td>
								<td>${behaviorDTO.action}</td>
								<td>${behaviorDTO.food}</td>
								<td>${behaviorDTO.temperature}</td>
								<td>${behaviorDTO.note}</td>
								<td>${behaviorDTO.formattedCreatedTime}</td>
								<td>
									<a href="/ornibase/discuss/behavior/${behaviorDTO.discussId}/edit/${behaviorDTO.behaviorId}" 
									   class="btn btn-sm btn-warning">編輯</a>
								</td>
								<td>
									<form method="post" 
									      action="/ornibase/discuss/behavior/${behaviorDTO.discussId}/delete/${behaviorDTO.behaviorId}" 
									      onsubmit="return confirmDelete();">
										<input type="hidden" name="_method" value="DELETE" />
										<button type="submit" class="btn btn-sm btn-danger">刪除</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- DataTables 初始化 -->
	<script>
		$(document).ready(function() {
			$('#behaviorTable').DataTable({
				"language": {
					"url": "//cdn.datatables.net/plug-ins/1.13.6/i18n/zh-HANT.json"
				},
				"order": [[1, "desc"]] // 預設依行為日期倒序
			});
		});
	</script>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
