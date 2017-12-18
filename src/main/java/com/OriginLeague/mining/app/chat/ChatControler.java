package com.OriginLeague.mining.app.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatControler {

    @RequestMapping(value = "webchat")
    public String webchat(){
        return "chat/chat";
    }
}
