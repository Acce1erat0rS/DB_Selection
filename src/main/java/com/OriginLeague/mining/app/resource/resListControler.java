package com.OriginLeague.mining.app.resource;


import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class resListControler {
    private int i;

    @RequestMapping("/resources")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        return "res/list";
    }
    public int getI(){
        return this.i;
    }

    public void setI(int i){
        this.i = i;
    }
}

