<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>

<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
	<script>
		window.notLoggedIn = ${empty userCert ? true : false };
	</script>
	<script src="/js/preview.js" defer></script>
</head>

<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-logout.jspf"%>

	<!-- 封面 -->
	<div class="container-fluid bg-white border-bottom py-4">
		<div class="container d-flex align-items-center">
			<div
				style="width: 1000; 
					   height: 100; 
					   backgroundImage: url('/images/osprey.png'); 
					   backgroundSize: cover; 
					   backgroundPosition: center; 
					   backgroundRepeat: no-repeat; 
					   borderRadius: 6; 
					   flexShrink: 0">

			</div>
			<div class="ms-3">
				<h1 class="h4 mb-1">生物行為</h1>
				<p class="mb-0 text-muted">瀏覽主題看板和文章。</p>
			</div>
		</div>
	</div>

	<!-- 全站公告 -->
	<div class="container-fluid bg-light py-2">
		<div class="container">
			<div class="small text-center text-muted">全站公告</div>
		</div>
	</div>

	<!-- 主要內容 -->
	<div class="container my-4">
		<div class="row">
			<!-- 熱門討論串清單 -->
			<div class="col-lg-8">
				<div class="mb-3">
					<h4 class="mb-3">熱門討論串</h4>
					<div class="list-group">
						<c:choose>
							<c:when test="${not empty discussList}">
								<c:forEach var="discussDTO" items="${discussList}">
									<a href="/ornibase/discuss/${discussDTO.discussId}" 
									   class="list-group-item list-group-item-action mb-1 p-2 d-flex align-items-center"> 
										
										<!-- 討論串左側圖片區 -->
										<img
											src="https://img.youtube.com/vi/${discussDTO.youtubeVideoId}/mqdefault.jpg"
											alt="YouTube封面" class=""
											style="width: 200px; height: auto; flex-shrink: 0; margin-right: 15px;">
											
										<!-- 討論串右側文字區 -->
										<span class="d-flex flex-column flex-grow-1">
											<span class="fw-bold mb-5">
													${discussDTO.title}
											</span>
											<span class="text-muted mt-auto" style="font-size: 0.875rem" >
													分類： 
													版主： 
													文章：
													紀錄：${behaviorCountMap[discussDTO.discussId]} 
													人氣：
													人數：${favoriteCountMap[discussDTO.discussId]}
											</span>
										</span>
									</a>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<p class="text-muted">目前尚無群組，請先建立一個。</p>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<!-- 右側分區 -->
			<div class="col-md-4">
			    <!-- 搜尋 -->
			    <form class="d-flex mb-2" method="get" action="/ornibase/search">
               		<input type="text" name="keyword" class="form-control me-2" placeholder="輸入關鍵字...">
               		<button type="submit" class="btn btn-primary">
						<i class="fa-solid fa-magnifying-glass"></i>
               		</button>
           		</form>
           		<!-- 最近閱覽討論串 -->
				<div class="mb-3">
					<div class="card">
						<div class="card-header bg-white">
							<strong class="small">最近閱覽討論串</strong>
						</div>
						<div class="card-body p-2">
							<ul class="list-unstyled mb-0">
								<!-- 
		 		                <c:forEach var="board" items="${recentBoards}">
				                    <div><a href="/ornibase/board/${board.id}">${board.name}</a></div>
				                </c:forEach>
		 						-->
								<li key={idx} class="py-2 border-bottom"><a
									class="text-decoration-none" href="#">{r}</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 新成立討論串 -->
				<div class="mb-3">
					<div class="card">
						<div class="card-header bg-white">
							<strong class="small">新成立討論串</strong>
						</div>
						<div class="card-body p-2">
							<ul class="list-unstyled mb-0">
								<!-- 
					                <c:forEach var="board" items="${newBoards}">
					                    <div><a href="/ornibase/board/${board.id}">${board.name}</a></div>
					                </c:forEach>
			 					-->
 								<li key={idx} class="py-2 border-bottom"><a
									class="text-decoration-none" href="#">{r}</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
