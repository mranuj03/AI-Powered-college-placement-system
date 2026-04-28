<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head>

<title>AI Placement Assistant</title>

<style>

body{
font-family:Arial;
}

#chatbox{
width:360px;
background:white;
border:1px solid #ccc;
padding:10px;
}

#chatlog{
height:250px;
overflow:auto;
border:1px solid #ddd;
padding:10px;
margin-bottom:10px;
}

.userMsg{
background:#dcf8c6;
padding:8px;
border-radius:10px;
margin:5px;
text-align:right;
}

.aiMsg{
background:#f1f0f0;
padding:8px;
border-radius:10px;
margin:5px;
text-align:left;
}

.typing{
color:gray;
font-style:italic;
margin:5px;
}

</style>

</head>

<body>

<div id="chatbox">

<h3>AI Placement Assistant</h3>

<div id="chatlog"></div>

<input type="text" id="msg" placeholder="Ask about placement..." style="width:65%;padding:6px">

<button onclick="send()">Send</button>

<button onclick="startMic()">🎤</button>

</div>

<script>

    /* ENTER SEND */

    document.getElementById("msg").addEventListener("keypress", function (e) {

        if (e.key === "Enter") {
            send();
        }

    });

    /* SEND MESSAGE */

    function send() {

        var msgBox = document.getElementById("msg");
        var msg = msgBox.value;

        if (msg.trim() == "") return;

        var chat = document.getElementById("chatlog");

        chat.innerHTML += "<div class='userMsg'>" + msg + "</div>";

        chat.innerHTML += "<div class='typing' id='typing'>AI typing...</div>";

        chat.scrollTop = chat.scrollHeight;

        fetch("AIChatbotAPI.aspx?msg=" + encodeURIComponent(msg))

            .then(res => res.text())

            .then(data => {

                document.getElementById("typing").remove();

                chat.innerHTML += "<div class='aiMsg'>" + data + "</div>";

                msgBox.value = "";

                chat.scrollTop = chat.scrollHeight;

            });

    }

    /* ---------- MIC SPEECH ---------- */

    function startMic() {

        var recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

        recognition.lang = "en-US";

        recognition.start();

        recognition.onresult = function (event) {

            var text = event.results[0][0].transcript;

            document.getElementById("msg").value = text;

            send();

        };

    }

</script>

</body>
</html>