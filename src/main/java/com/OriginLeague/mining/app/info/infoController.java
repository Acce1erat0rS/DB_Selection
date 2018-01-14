package com.OriginLeague.mining.app.info;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("info")
public class infoController {
    @RequestMapping("intro")
    public String toIntro(String name, Model model){
        return "info/course_intro";
    }

    @RequestMapping("outline")
    public String toOutline(String name, Model model){
        return "info/course_outline";
    }

    @RequestMapping("cal")
    public String toCal(String name, Model model){
        return "info/course_calender";
    }

    @RequestMapping("welcome")
    public String toWelcome(String name, Model model){
        return "info/welcome";
    }

    @RequestMapping("instruction")
    public String toInstruction(String name, Model model){
        return "info/instruction";
    }
}
