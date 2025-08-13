<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">    
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">        
    <link rel="stylesheet" href="/css/main.css">
    <title>OrniBase</title>
    <link rel="icon" type="image/png" href="/images/icon.png">
</head>
<body class="fontstyle">
    
    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-login.jspf" %>
                                        
    <!-- 導覽列下方圖片 -->
    <div class="image-area mb-4"></div>

    <div class="container">
        <!-- 標題與搜尋 -->
        <div class="d-flex flex-wrap justify-content-between align-items-center mb-3">
            <h2 class="mb-0">公開群組</h2>
            <form class="d-flex" method="get" action="/ornibase/search">
                <input type="text" name="keyword" class="form-control me-2" placeholder="輸入關鍵字搜尋筆記...">
                <button type="submit" class="btn btn-primary">搜尋</button>
            </form>
        </div>

        <!-- 群組列表 -->
        <div class="row g-3">
            <c:choose>
                <c:when test="${not empty discussList}">
                    <c:forEach var="discussDTO" items="${discussList}">
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="card h-100 shadow-sm">
                                <a href="/ornibase/discuss/${discussDTO.discussId}" class="text-decoration-none text-dark">
                                    <c:if test="${discussDTO.userId != userCert.userId}">
                                        <span class="position-absolute top-0 end-0 m-2 badge 
                                            ${favoriteDiscussIds.contains(discussDTO.discussId) ? 'bg-danger' : 'bg-secondary'}"
                                            data-discussid="${discussDTO.discussId}">
                                        </span>
                                    </c:if>

                                    <img src="https://img.youtube.com/vi/${discussDTO.youtubeVideoId}/mqdefault.jpg" 
                                         class="card-img-top" alt="YouTube封面">

                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <img src="/images/user.png" width="16" height="16" class="me-1">
                                            <span>${favoriteCountMap[discussDTO.discussId]}</span>
                                        </div>
                                        <h6 class="card-title text-truncate">${discussDTO.title}</h6>
                                        <div class="small text-muted">
                                            📄 ${behaviorCountMap[discussDTO.discussId]}
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <p class="text-muted">目前尚無群組，請先建立一個。</p>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>
