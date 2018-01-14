package com.OriginLeague.mining.app.teacher;

import com.OriginLeague.mining.app.teacher.TeacherForm.TeacherCreateGroup;
import com.OriginLeague.mining.app.teacher.TeacherForm.TeacherDeleteGroup;
import com.OriginLeague.mining.app.teacher.TeacherForm.TeacherUpdateGroup;
import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.model.Teacher;
import com.OriginLeague.mining.domain.service.student.StudentService;
import com.OriginLeague.mining.domain.service.teacher.TeacherService;
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

import javax.inject.Inject;
import javax.validation.groups.Default;

@Controller
@RequestMapping("teacher")
public class TeacherController {
    @Inject
    protected TeacherService teacherService;

    @Inject
    protected Mapper beanMapper;

    @ModelAttribute
    public TeacherForm setUpTeacherForm() {
        return new TeacherForm();
    }

    // create flow

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(TeacherForm form) {
        return "teacher/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class,
            TeacherCreateGroup.class }) TeacherForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "teacher/createForm";
        }
        return "teacher/createConfirm";
    }

    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(TeacherForm form) {
        // reset password

        return "teacher/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({ Default.class, TeacherCreateGroup.class }) TeacherForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "teacher/createForm";
        }

        Teacher teacher = beanMapper.map(form, Teacher.class);
        teacherService.save(teacher);

        return "redirect:/teacher/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "teacher/createComplete";
    }

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("tid") String id, TeacherForm form,
            Model model) {

        Teacher teacher = teacherService.findOne(id);
        beanMapper.map(teacher, form);

        model.addAttribute(teacher);

        return "teacher/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            TeacherUpdateGroup.class }) TeacherForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "teacher/updateForm";
        }
        return "teacher/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("tid") String id, TeacherForm form,
            Model model) {


        return "teacher/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, TeacherUpdateGroup.class }) TeacherForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "teacher/updateForm";
        }

        Teacher teacher = teacherService.findOne(form.getTid());
        teacher = beanMapper.map(form, teacher.getClass());
        teacherService.upsave(teacher);

        return "redirect:/teacher/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "teacher/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("tid") String id, TeacherForm form,
            Model model) {

        Teacher teacher = teacherService.findOne(id);
        beanMapper.map(teacher, form);

        model.addAttribute(teacher);
        return "teacher/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, TeacherDeleteGroup.class }) TeacherForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/teacher/list";
        }

        Teacher teacher = teacherService.findOne(form.getTid());
        beanMapper.map(form, teacher);

        teacherService.delete(teacher);
        return "redirect:/teacher/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "teacher/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/teacher/list";
    }
}
