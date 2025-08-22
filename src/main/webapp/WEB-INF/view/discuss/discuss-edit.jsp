<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/view/common.jspf"%>
</head>
<body class="fontstyle">
	<%@ include file="/WEB-INF/view/navbar-login.jspf"%>

  <div class="container my-4">
    <div class="row justify-content-center">
      <div class="col-lg-6">
        <div class="card shadow-sm">
          <div class="card-body">
            <h2 class="card-title mb-3">編輯群組</h2>

            <sp:form method="post" modelAttribute="discussDTO" action="/naturebase/discuss/update/${discussDTO.discussId}">
              <input type="hidden" name="_method" value="PUT" />

              <div class="mb-3">
                <label class="form-label">標題 <span class="text-danger">*</span></label>
                <sp:input type="text" path="title" placeholder="請輸入標題" class="form-control" required="required"/>
              </div>

              <div class="mb-3">
                <label class="form-label">影片描述 <span class="text-danger">*</span></label>
                <sp:input type="text" path="description" placeholder="請描述內容" class="form-control" required="required"/>
              </div>

              <div class="mb-3">
                <label class="form-label">標籤</label>
                <sp:select path="tag" class="form-select" required="required">
                  <sp:option value="" label="請選擇標籤" />
                  <sp:option value="猛禽" />
                  <sp:option value="燕" />
                  <sp:option value="雀" />
                  <sp:option value="鵲" />
                  <sp:option value="鸛" />
                  <sp:option value="鳩鴿" />
                  <sp:option value="海鷗" />
                  <sp:option value="蜂鳥" />
                </sp:select>
              </div>

              <div class="mb-3">
                <label class="form-label">Youtube 連結</label>
                <sp:input type="text" path="youtubeVideoId" placeholder="請輸入連結中... v= 後面 11 位數" class="form-control"/>
              </div>

              <div class="form-check mb-3">
                <input type="checkbox" class="form-check-input" name="isPublic" value="true" checked>
                <input type="hidden" name="isPublic" value="false">
                <label class="form-check-label">是否公開</label>
              </div>

              <div class="d-flex justify-content-between">
                <button type="reset" class="btn btn-secondary">重置</button>
                <button type="submit" class="btn btn-primary">建立</button>
              </div>

            </sp:form>

          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
