package com.OriginLeague.mining.app.chat;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.config.annotation.EnableWebSocket;

import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


@ServerEndpoint(value="/Chatwebsocket")
public class Chatserver {
	private static int onlinenum=0;
	
	private static CopyOnWriteArraySet<Chatserver> socketset=new CopyOnWriteArraySet<Chatserver>();
	
	private Session session;
	
	@OnOpen
	public void onOpen(Session session)
	{
		this.session=session;
		socketset.add(this);
		modionlinenum(0);
		System.out.println("userchatonline "+getonlinenum());
	}
	
	@OnClose
	public void onClose()
	{
		socketset.remove(this);
		modionlinenum(1);
		System.out.println("userchatoffline "+getonlinenum());
		
	}
	
	@OnMessage
	public void onMessage(String message, Session session)
	{
		System.out.println("message from "+getonlinenum());
		for(Chatserver item:socketset)
		{
			item.sendmessage(message);
		}
	}
	
	@OnError
	public void onError(Session session,Throwable error)
	{
		System.out.println("chatservice error");
		error.printStackTrace();
		for(Chatserver item:socketset)
		{
			item.sendmessage("error at server");
		}
	}
	
	public static synchronized void modionlinenum(int type)
	{
		if(type==0) Chatserver.onlinenum++;
		else Chatserver.onlinenum--;
		if(Chatserver.onlinenum<0) System.out.println("onlinenum error");
	}
	
	public static synchronized int getonlinenum()
	{
		return Chatserver.onlinenum;
	}
	
	public void sendmessage(String message)
	{
		try {
			this.session.getBasicRemote().sendText(message);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
