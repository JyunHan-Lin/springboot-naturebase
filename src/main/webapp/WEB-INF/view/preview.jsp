<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">        
    <link rel="icon" type="image/png" href="/images/icon.png">
    <title>OrniBase</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- 自訂 CSS -->
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">        
    <link rel="stylesheet" href="/css/main.css">
    
    <script>
        window.notLoggedIn = ${empty userCert};
    </script>
    <script src="/js/preview.js"></script>
</head>
<body class="fontstyle">

    <%@ include file="/WEB-INF/view/menu-pre.jspf" %>

    <div class="container my-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>公開群組</h3>
            <form class="d-flex" method="get" action="/preview/search">
                <input class="form-control me-2" type="text" name="keyword" placeholder="輸入關鍵字搜尋筆記...">
                <button class="btn btn-primary" type="submit">搜尋</button>
            </form>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:choose>
                <c:when test="${not empty discussList}">
                    <c:forEach var="discussDTO" items="${discussList}">
                        <div class="col">
                            <div class="card h-100">
                                <c:if test="${discussDTO.userId != userCert.userId}">
                                    <span class="favorite-tag 
                                        ${favoriteDiscussIds.contains(discussDTO.discussId) ? 'favorited' : 'not-favorited'}" 
                                        data-discussid="${discussDTO.discussId}"></span>
                                </c:if>

                                <a href="/ornibase/discuss/${discussDTO.discussId}">
                                    <img src="https://img.youtube.com/vi/${discussDTO.youtubeVideoId}/mqdefault.jpg" 
                                        class="card-img-top" alt="YouTube封面">
                                </a>
                                
                                <div class="card-body">
                                    <h5 class="card-title">${discussDTO.title}</h5>
                                    <p class="card-text mb-1">
                                        <span class="emoji"><img src="/images/user.png" width="12" height="12"></span>
                                        ${favoriteCountMap[discussDTO.discussId]}
                                    </p>
                                    <p class="card-text">
                                        <span class="emoji">📄</span> ${behaviorCountMap[discussDTO.discussId]}
                                    </p>
                                </div>
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
