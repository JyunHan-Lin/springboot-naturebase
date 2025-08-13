<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">        
    <title>OrniBase</title>
    <link rel="icon" type="image/png" href="/images/icon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body class="fontstyle">

    <!-- menu bar include -->
    <%@ include file="/WEB-INF/view/menu-login.jspf" %>

    <div class="container my-4">

        <!-- 建立的群組 -->
        <h4 class="mb-3">建立的群組</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:choose>
                <c:when test="${not empty myDiscussList}">
                    <c:forEach var="discussDTO" items="${myDiscussList}">
                        <div class="col">
                            <a href="/ornibase/discuss/${discussDTO.discussId}" class="text-decoration-none text-dark">
                                <div class="card h-100 shadow-sm">
                                    <img src="https://img.youtube.com/vi/${discussDTO.youtubeVideoId}/mqdefault.jpg"
                                         class="card-img-top" alt="YouTube封面">
                                    <div class="card-body">
                                        <h6 class="card-title">${discussDTO.title}</h6>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between">
                                        <small class="text-muted">📄 ${behaviorCountMap[discussDTO.discussId]}</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <p class="text-muted">目前尚無群組</p>
                </c:otherwise>
            </c:choose>
        </div>

        <!-- 追蹤名單 -->
        <h4 class="mt-5 mb-3">追蹤名單</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:choose>
                <c:when test="${not empty favoriteDiscussList}">
                    <c:forEach var="discussDTO" items="${favoriteDiscussList}">
                        <div class="col">
                            <a href="/ornibase/discuss/${discussDTO.discussId}" class="text-decoration-none text-dark">
                                <div class="card h-100 shadow-sm">
                                    <img src="https://img.youtube.com/vi/${discussDTO.youtubeVideoId}/mqdefault.jpg"
                                         class="card-img-top" alt="YouTube封面">
                                    <div class="card-body">
                                        <h6 class="card-title">${discussDTO.title}</h6>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between">
                                        <small class="text-muted">
                                            <img src="/images/user.png" width="12" height="12"> ${favoriteCountMap[discussDTO.discussId]}
                                        </small>
                                        <small class="text-muted">📄 ${behaviorCountMap[discussDTO.discussId]}</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <p class="text-muted">目前尚無收藏筆記本</p>
                </c:otherwise>
            </c:choose>
        </div>

    </div>

</body>
</html>
