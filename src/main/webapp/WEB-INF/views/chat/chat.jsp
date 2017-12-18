<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="text" id="inbox">Send<br>
<button onclick="send()">send</button>
<hr/>
<button onclick="closewebsocket()">offline</button>
<hr/>
<div id="chatpane"></div>
</body>

<script type="text/javascript">
	var chatwebsocket=null;
	
	var username="john";
	
	if("WebSocket" in window)
		chatwebsocket=new WebSocket("ws://localhost:8080/chat/Chatwebsocket");
	else
		alert("browser not support ws");
	chatwebsocket.onerror=function(event)
	{
		setmessageinchat("socket error offline");
		event.toString();
	}
	
	chatwebsocket.onopen=function()
	{
		setmessageinchat("online");
	}
	
	chatwebsocket.onmessage=function(event)
	{
		var msg=JSON.parse(event.data);
		setmessageinchat(msg.user+msg.text+msg.date);
	}
	
	chatwebsocket.onclose=function()
	{
		chatwebsocket.close();
	}
	
	function send()
	{
		var d=new Date();
		var month=d.getMonth()+1;
		var tdate=" "+month+" "+d.getDate()+" "+d.getHours()+" "+d.getMinutes()+" ";
		var message=document.getElementById("inbox").value;
		var msg={text:message, user:username, date: tdate};
		chatwebsocket.send(JSON.stringify(msg));
		document.getElementById("inbox");
	}
	
	function setmessageinchat(innerHTML)
	{
		document.getElementById("chatpane").innerHTML+=innerHTML+"<br/>";
	}
	
	function closewebsocket()
	{
		chatwebsocket.close();
	}
	
	
</script>


</html>