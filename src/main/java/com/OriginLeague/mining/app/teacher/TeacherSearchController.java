package com.OriginLeague.mining.app.teacher;

import com.OriginLeague.mining.domain.model.Teacher;
import com.OriginLeague.mining.domain.service.teacher.TeacherService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefaults;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.validation.Valid;

@Controller
@RequestMapping("teacher")
public class TeacherSearchController {
    @Inject
    protected TeacherService teacherService;

    @ModelAttribute
    public TeacherSearchForm setUpForm() {
        return new TeacherSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<Teacher> page = teacherService.findAll(pageable);
        model.addAttribute("page", page);
        return "teacher/list";
    }

    @RequestMapping("search")
    public String search(@Valid TeacherSearchForm form, BindingResult result,
                         @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "teacher/list";
        }

        String name = form.getName();
        String query = (StringUtils.hasText(name) ? name : "") + "%";
        Page<Teacher> page = teacherService.findByNameLike(query, pageable);
        model.addAttribute("page", page);
        return "teacher/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("tid") String id,
            RedirectAttributes attr) {
        attr.addAttribute("tid", id);
        return "redirect:/teacher/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("tid") String id,
            RedirectAttributes attr) {
        attr.addAttribute("tid", id);
        return "redirect:/teacher/delete?form";
    }
}
