package com.OriginLeague.mining.app.homework;
import javax.inject.Inject;
import javax.validation.groups.Default;

import org.dozer.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.OriginLeague.mining.app.homework.HomeworkForm;
import com.OriginLeague.mining.app.homework.HomeworkForm.HomeworkCreateGroup;
import com.OriginLeague.mining.app.homework.HomeworkForm.HomeworkDeleteGroup;
import com.OriginLeague.mining.app.homework.HomeworkForm.HomeworkUpdateGroup;
import com.OriginLeague.mining.domain.model.Homework;
import com.OriginLeague.mining.domain.service.homework.HomeworkService;

@Controller
@RequestMapping("homework")
public class HomeworkController {
	@Inject
    protected HomeworkService homeworkService;

    @Inject
    protected Mapper beanMapper;

    @ModelAttribute
    public HomeworkForm setUpHomeworkForm() {
        return new HomeworkForm();
    }

    // create flow

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(HomeworkForm form) {
        return "homework/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class,
            HomeworkCreateGroup.class }) HomeworkForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "homework/createForm";
        }
        return "homework/createConfirm";
    }

    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(HomeworkForm form) {
        // reset password
        form.setContent("");
   //     form.userExcludePassword("");
        return "homework/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({Default.class, HomeworkCreateGroup.class }) HomeworkForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "homework/createForm";
        }

        Homework homework = beanMapper.map(form, Homework.class);
//        homeworkService.save(user, form.getPassword());

        return "redirect:/homework/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "homework/createComplete";
    }

    // update flow

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("id") Integer id, HomeworkForm form,
            Model model) {

        Homework user = homeworkService.findOne(id);
//        beanMapper.map(homework, form, "userExcludePassword");

        model.addAttribute(user);

        return "homework/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            HomeworkUpdateGroup.class }) HomeworkForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "homework/updateForm";
        }
        return "homework/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("id") Integer id, HomeworkForm form,
            Model model) {

        // reset password
        form.setContent("");

        return "homework/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, HomeworkUpdateGroup.class }) HomeworkForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "homework/updateForm";
        }

        Homework homework = homeworkService.findOne(form.getId());
        beanMapper.map(form, homework);
        homeworkService.save(homework, form.getChapter(), form.getContent(), form.getDeadline());

        return "redirect:/homework/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "homework/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("id") Integer id, HomeworkForm form,
            Model model) {

        Homework homework = homeworkService.findOne(id);
        beanMapper.map(homework, form);

        model.addAttribute(homework);
        return "homework/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, HomeworkDeleteGroup.class }) HomeworkForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/homework/list";
        }

        Homework homework = homeworkService.findOne(form.getId());
        beanMapper.map(form, homework);

        homeworkService.delete(homework);
        return "redirect:/homework/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "homework/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/homework/list";
    }
}
