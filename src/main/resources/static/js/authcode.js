document.querySelector("img[title='驗證碼']").addEventListener("click", 
function() {
    this.src = "/user/authcode?" + new Date().getTime(); // 防止快取
});