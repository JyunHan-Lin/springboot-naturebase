<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
	<!-- 從 Google 的 CDN 載入 Google Charts 套件, 引入 Google Charts-->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="/js/charts.js" defer></script>
	<script src="/js/ajax.js"></script>
	<script src="/js/discuss-delete.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/stompjs@2.3.3/lib/stomp.min.js"></script>
	<script src="/js/chat.js"></script>
</head>

<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-login.jspf"%>

	<!-- 外層容器 -->
	<div class="container mt-4">
		<div class="row">
			<!-- 左側：影片與圖表 -->
			<div class="col-lg-8 mb-4">
				<div class="card shadow-sm mb-3">
					<div class="card-body">
						<div class="d-flex justify-content-between align-items-center mb-3">
							<div class="d-flex align-items-center">
								<div
									class="rounded-circle bg-danger text-white d-flex justify-content-center align-items-center me-2"
									style="width: 40px; height: 40px;" 
									title="建立者：${creatorName}">
									${creatorName.substring(0,1).toUpperCase()}
								</div>
								<div>
									<h4 class="mb-1">${discussDTO.title}</h4>
									<span class="badge bg-secondary">${discussDTO.tag}</span> 
									<span class="badge bg-primary">${discussDTO.isPublic ? '公開' : '私人'}</span>
								</div>
							</div>

							<div class="btn-group">
								<c:choose>
									<c:when test="${privilegeLevel == 3}">
										<a href="/ornibase/discuss/update/${discussDTO.discussId}" class="btn btn-warning mx-1">編輯</a>
										<form 
											method="post"
											action="/naturebase/discuss/delete/${discussDTO.discussId}"
											class="d-inline">
											<input type="hidden" name="_method" value="DELETE" />
											<button type="submit" class="btn btn-danger" onclick="return confirmDelete();">刪除</button>
										</form>
									</c:when>
									<c:when test="${privilegeLevel == 2}">
										<form method="post"
											action="/naturebase/discuss/favorite/${discussDTO.discussId}/delete">
											<button type="submit" class="btn btn-danger">取消追蹤</button>
										</form>
									</c:when>
									<c:otherwise>
										<p>若想記錄行為或留言，請先追蹤</p>
										<form method="post" action="/naturebase/discuss/favorite/${discussDTO.discussId}">
											<button type="submit" class="btn btn-danger">追蹤</button>
										</form>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

						<p class="mb-2">${discussDTO.description}</p>
						<small class="text-muted text-end d-block">建立時間：${discussDTO.formattedCreatedTime}</small>

						<!-- YouTube -->
						<div class="ratio ratio-16x9 mt-3 mb-3">
							<iframe
								src="https://www.youtube.com/embed/${discussDTO.youtubeVideoId}"
								frameborder="0" allowfullscreen></iframe>
						</div>

						<!-- 圖表 -->
						<div class="row">
							<div class="col-md-12 mb-3">
								<h6>當日行為時間軸</h6>
								<div id="timeline-chart" data-discuss-id="${discussDTO.discussId}" style="height: 180px;"></div>
							</div>
						</div>
						
						<!-- 留言區塊 -->
						<%@ include file="/WEB-INF/view/behavior/behavior-message.jspf"%>
					</div>
				</div>
			</div>

			<!-- 右側：行為表單 -->
			<div class="col-lg-4">
				<c:if test="${privilegeLevel >=2}">
					<div class="card shadow-sm">
						<div class="card-body">
							<%@ include file="/WEB-INF/view/behavior/behavior-form.jspf"%>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>

</body>

</html>

