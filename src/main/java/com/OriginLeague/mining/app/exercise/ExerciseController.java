package com.OriginLeague.mining.app.exercise;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex")
public class ExerciseController {
    @RequestMapping("home")
    public String toIntro(String name, Model model){
        return "/exercise/home";
    }

    @RequestMapping("class1")
    public String toOne(String name, Model model){
        return "exercise/class1";
    }

    @RequestMapping("class2")
    public String toTwo(String name, Model model){
        return "exercise/class2";
    }

    @RequestMapping("class3")
    public String toThree(String name, Model model){
        return "exercise/class3";
    }

    @RequestMapping("class4")
    public String toFour(String name, Model model){
        return "exercise/class4";
    }

    @RequestMapping("upload1")
    public String toUOne(String name, Model model){
        return "exercise/upload1";
    }

    @RequestMapping("upload2")
    public String toUTwo(String name, Model model){
        return "exercise/upload2";
    }

    @RequestMapping("upload3")
    public String toUThree(String name, Model model){
        return "exercise/upload3";
    }

    @RequestMapping("upload4")
    public String toUFour(String name, Model model){
        return "exercise/upload4";
    }

}
