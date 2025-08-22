var stompClient = null;
    var roomId = '${discussDTO.discussId}';  // 動態聊天室Id

    function escapeHtml(text) {
        var div = document.createElement('div');
        div.appendChild(document.createTextNode(text));
        return div.innerHTML;
    }

    function showChatMessage(chat) {
        var messages = document.getElementById('chatMessages');
        var msgDiv = document.createElement('div');
        msgDiv.classList.add("d-flex", "mb-3");

        var iconDiv = document.createElement('div');
        iconDiv.classList.add("flex-shrink-0", "me-2");
        iconDiv.innerHTML = '<div class="rounded-circle bg-primary text-white text-center" ' +
            'style="width: 40px; height: 40px; line-height: 40px;">' +
            escapeHtml(chat.from.substring(0,1)) + '</div>';

        var contentDiv = document.createElement('div');
        contentDiv.classList.add("flex-grow-1");
        var now = new Date();
        var formattedTime = now.getHours().toString().padStart(2,'0') + ':' + 
                            now.getMinutes().toString().padStart(2,'0') + ':' + 
                            now.getSeconds().toString().padStart(2,'0');

        contentDiv.innerHTML = '<strong>' + escapeHtml(chat.from) + '</strong>' +
            '<p class="mb-0">' + escapeHtml(chat.content) + '</p>' +
            '<small class="text-muted">' + formattedTime + '</small>';

        msgDiv.appendChild(iconDiv);
        msgDiv.appendChild(contentDiv);
        messages.appendChild(msgDiv);
        messages.scrollTop = messages.scrollHeight;
    }

    function connect() {
        var socket = new SockJS('/chat-websocket');
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function (frame) {
            console.log('Connected: ' + frame);
            stompClient.subscribe('/topic/messages/' + roomId, function (message) {
                var chat = JSON.parse(message.body);
                showChatMessage(chat);
            });
        });
    }

    function sendMessage() {
        var from = document.getElementById('chatUserName').value.trim();
        var content = document.getElementById('chatContent').value.trim();
        if(from && content) {
            var chat = { from: from, content: content };
            stompClient.send("/app/chat/" + roomId, {}, JSON.stringify(chat));
            document.getElementById('chatContent').value = '';
        } else {
            alert('請輸入名稱與訊息');
        }
    }

    document.getElementById('sendBtn')?.addEventListener('click', sendMessage);

    window.onload = function() {
        connect();
    };