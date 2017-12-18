package com.OriginLeague.mining.app.homework;

import javax.inject.Inject;
import javax.validation.Valid;

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

import com.OriginLeague.mining.domain.model.Homework;
import com.OriginLeague.mining.domain.service.homework.HomeworkService;

@Controller
@RequestMapping("homework")
public class HomeworkSearchController {
    @Inject
    protected HomeworkService homeworkService;

    @ModelAttribute
    public HomeworkSearchForm setUpForm() {
        return new HomeworkSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<Homework> page = homeworkService.findAll(pageable);
        model.addAttribute("page", page);
        return "homework/list";
    }

    @RequestMapping("search")
    public String search(@Valid HomeworkSearchForm form, BindingResult result,
            @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "homework/list";
        }

        String chapter = form.getChapter();
        String query = (StringUtils.hasText(chapter) ? chapter : "") + "%";
        Page<Homework> page = homeworkService.findByChapterLike(query, pageable);
        model.addAttribute("page", page);
        return "homework/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("id") Integer id,
            RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/homework/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("id") Integer id,
            RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/homework/delete?form";
    }
}
