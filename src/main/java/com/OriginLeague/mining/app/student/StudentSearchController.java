package com.OriginLeague.mining.app.student;

import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.service.student.StudentService;
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
@RequestMapping("student")
public class StudentSearchController {
    @Inject
    protected StudentService studentService;

    @ModelAttribute
    public StudentSearchForm setUpForm() {
        return new StudentSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<Student> page = studentService.findAll(pageable);
        model.addAttribute("page", page);
        return "student/list";
    }

    @RequestMapping("search")
    public String search(@Valid StudentSearchForm form, BindingResult result,
                         @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "student/list";
        }

        String name = form.getName();
        String query = (StringUtils.hasText(name) ? name : "") + "%";
        Page<Student> page = studentService.findByNameLike(query, pageable);
        model.addAttribute("page", page);
        return "student/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("sid") String id,
            RedirectAttributes attr) {
        attr.addAttribute("sid", id);
        return "redirect:/student/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("sid") String id,
            RedirectAttributes attr) {
        attr.addAttribute("sid", id);
        return "redirect:/student/delete?form";
    }
}
