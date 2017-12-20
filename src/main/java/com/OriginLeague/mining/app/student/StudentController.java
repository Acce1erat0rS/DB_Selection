package com.OriginLeague.mining.app.student;

import com.OriginLeague.mining.app.student.StudentForm.StudentCreateGroup;
import com.OriginLeague.mining.app.student.StudentForm.StudentDeleteGroup;
import com.OriginLeague.mining.app.student.StudentForm.StudentUpdateGroup;
import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.service.student.StudentService;
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
@RequestMapping("student")
public class StudentController {
    @Inject
    protected StudentService studentService;

    @Inject
    protected Mapper beanMapper;

    @ModelAttribute
    public StudentForm setUpStudentForm() {
        return new StudentForm();
    }

    // create flow

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(StudentForm form) {
        return "student/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class,
            StudentCreateGroup.class }) StudentForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "student/createForm";
        }
        return "student/createConfirm";
    }

    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(StudentForm form) {
        // reset password

        return "student/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({ Default.class, StudentCreateGroup.class }) StudentForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "student/createForm";
        }

        Student student = beanMapper.map(form, Student.class);
        studentService.save(student);

        return "redirect:/student/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "student/createComplete";
    }

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("SID") String id, StudentForm form,
            Model model) {

        Student student = studentService.findOne(id);
        form = beanMapper.map(student, form.getClass());

        model.addAttribute(student);

        return "student/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            StudentUpdateGroup.class }) StudentForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "student/updateForm";
        }
        return "student/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("SID") String id, StudentForm form,
            Model model) {


        return "student/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, StudentUpdateGroup.class }) StudentForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "student/updateForm";
        }

        Student student = studentService.findOne(form.getSID());
        beanMapper.map(form, student);
        studentService.save(student);

        return "redirect:/student/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "student/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("SID") String sid, StudentForm form,
            Model model) {

        Student student = studentService.findOne(sid);
        beanMapper.map(student, form);

        model.addAttribute(student);
        return "student/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, StudentDeleteGroup.class }) StudentForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/student/list";
        }

        Student student = studentService.findOne(form.getSID());
        beanMapper.map(form, student);

        studentService.delete(student);
        return "redirect:/student/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "student/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/student/list";
    }
}
