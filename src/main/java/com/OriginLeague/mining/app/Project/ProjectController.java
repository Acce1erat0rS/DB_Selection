package com.OriginLeague.mining.app.Project;

import com.OriginLeague.mining.app.Project.ProjectForm.ProjectCreateGroup;
import com.OriginLeague.mining.app.Project.ProjectForm.ProjectDeleteGroup;
import com.OriginLeague.mining.app.Project.ProjectForm.ProjectUpdateGroup;
import com.OriginLeague.mining.domain.model.Project;
//import com.OriginLeague.mining.domain.service.firstchoice.FirstService;
import com.OriginLeague.mining.domain.service.project.ProjectService;
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
@RequestMapping("project")
public class ProjectController {
    @Inject
    protected ProjectService projectService;

    @Inject
    protected Mapper beanMapper;

//    @Inject
//    protected FirstService firstService;

    @ModelAttribute
    public ProjectForm setUpProjectForm() {
        return new ProjectForm();
    }

    @RequestMapping("/project/greeting")
    public String greeting(@RequestParam(value="name", required=false) String name, Model model) {
        return "ppts/list";
    }

    @RequestMapping(value = "create", params = "form", method = RequestMethod.GET)
    public String createForm(ProjectForm form, Model model) {

        model.addAttribute("major");
        return "project/createForm";
    }

    @RequestMapping(value = "create", params = "confirm", method = RequestMethod.POST)
    public String createConfirm(@Validated({ Default.class, ProjectCreateGroup.class })
                                ProjectForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "project/createForm";
        }
        return "project/createConfirm";
    }

    @RequestMapping(value = "show", method = RequestMethod.POST)
    public String showConfirm(@RequestParam("pid") String id, ProjectForm form,
                              Model model) {
//
//        Project project = projectService.findOne(id);
//        ProjectForm keyPointForm = new ProjectForm();
//        keyPointForm.setId(id);
//        keyPointForm.setDescription(project.getDescription());
//        keyPointForm.setName(project.getName());
//        model.addAttribute(project);
        return "project/show";
    }


    @RequestMapping(value = "create", params = "redo", method = RequestMethod.POST)
    public String createRedo(ProjectForm form) {
        return "project/createForm";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(
            @Validated({ Default.class, ProjectCreateGroup.class }) ProjectForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "project/createForm";
        }
        Project project = beanMapper.map(form, Project.class);

        project.setChosennum(1);
        projectService.save(project);

        return "redirect:/project/create?complete";
    }

    @RequestMapping(value = "create", params = "complete", method = RequestMethod.GET)
    public String createComplete() {
        return "project/createComplete";
    }


//    @RequestMapping(value="firstchoice",method = RequestMethod.DELETE.GET)
//    public String addToWishlist(){
//
//    }

    // update flow

    @RequestMapping(value = "update", params = "form", method = RequestMethod.GET)
    public String updateForm(@RequestParam("pid") String id, ProjectForm form,
            Model model) {

        Project project = projectService.findOne(id);
        form = beanMapper.map(project, form.getClass());
        model.addAttribute(project);

        return "project/updateForm";
    }

    @RequestMapping(value = "update", params = "confirm", method = RequestMethod.POST)
    public String updateConfirm(@Validated({ Default.class,
            ProjectUpdateGroup.class }) ProjectForm form, BindingResult result) {
        if (result.hasErrors()) {
            return "project/updateForm";
        }
        return "project/updateConfirm";
    }

    @RequestMapping(value = "update", params = "redo", method = RequestMethod.POST)
    public String updateRedo(@RequestParam("pid") String id, ProjectForm form,
            Model model) {

        // reset password

        return "project/updateForm";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(
            @Validated({ Default.class, ProjectUpdateGroup.class }) ProjectForm form,
            BindingResult result) {
        if (result.hasErrors()) {
            return "project/updateForm";
        }

        Project project = projectService.findOne(form.getPid());
        beanMapper.map(form, project);
        projectService.save(project);

        return "redirect:/project/update?complete";
    }

    @RequestMapping(value = "update", params = "complete", method = RequestMethod.GET)
    public String updateComplete() {
        return "project/updateComplete";
    }

    // delete flow

    @RequestMapping(value = "delete", params = "form", method = RequestMethod.GET)
    public String deleteForm(@RequestParam("pid") String id, ProjectForm form,
            Model model) {

        Project project = projectService.findOne(id);
        form = beanMapper.map(project, form.getClass());

        model.addAttribute(project);
        return "project/deleteForm";
    }

    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(
            @Validated({ Default.class, ProjectDeleteGroup.class }) ProjectForm form,
            BindingResult result, RedirectAttributes attr) {
        if (result.hasErrors()) {
            attr.addFlashAttribute("errorMessage", "Illegal Access!");
            return "redirect:/project/list";
        }

        Project project = projectService.findOne(form.getPid());
        beanMapper.map(form, project);

        projectService.delete(project);
        return "redirect:/project/delete?complete";
    }

    @RequestMapping(value = "delete", params = "complete")
    public String deleteComplete() {
        return "project/deleteComplete";
    }

    @RequestMapping(value = { "create", "update", "delete" }, params = "redirectToList")
    public String redirectToList() {
        return "redirect:/project/list";
    }
}
