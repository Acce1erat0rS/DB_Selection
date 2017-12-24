package com.OriginLeague.mining.app.Project;

import com.OriginLeague.mining.domain.model.Project;
import com.OriginLeague.mining.domain.model.Student;
import com.OriginLeague.mining.domain.model.firstchoice;
import com.OriginLeague.mining.domain.model.subs;
import com.OriginLeague.mining.domain.service.firstchoice.FirstService;
import com.OriginLeague.mining.domain.service.project.ProjectService;
import com.OriginLeague.mining.domain.service.student.StudentService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefaults;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("project")
public class ProjectSearchController {
    @Inject
    protected ProjectService projectService;

    @Inject
    protected FirstService firstService;

    @Inject
    protected StudentService studentService;

    @ModelAttribute
    public ProjectSearchForm setUpForm() {
        return new ProjectSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<Project> page = projectService.findAll(pageable);
        model.addAttribute("page", page);
        return "project/list";
    }

    @RequestMapping("mylist")
    public String mylist(@PageableDefaults Pageable pageable, Model model) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication() .getPrincipal();
        String name = userDetails.getUsername();
        Page<Project> page = projectService.findByTID(name,pageable);
        model.addAttribute("page", page);
        return "project/mylist";
    }

    @RequestMapping("search")
    public String search(@Valid ProjectSearchForm form, BindingResult result,
                         @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "project/list";
        }

        String name = form.getName();
        String query = (StringUtils.hasText(name) ? name : "") + "%";
        Page<Project> page = projectService.findByNameLike(query, pageable);
        model.addAttribute("page", page);
        return "project/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("pid") String id,
                                       RedirectAttributes attr) {
        attr.addAttribute("pid", id);
        return "redirect:/project/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("pid") String id,
                                       RedirectAttributes attr) {
        attr.addAttribute("pid", id);
        return "redirect:/project/delete?form";
    }

//    @RequestMapping(params = "redirectToChose")
//    public String redirectToChoseForm(@RequestParam("pid") String id,
//                                       RedirectAttributes attr) {
//        attr.addAttribute("pid", id);
//        return "redirect:/project/delete?form";
//    }

    @RequestMapping(params="redirectToChose")
    public String addToWishlist(@RequestParam("pid") String id,ProjectForm form,
                                Model model){

        String a =" a";
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication() .getPrincipal();
        String SID = userDetails.getUsername();
        firstService.add(id,SID);

        return "project/choseComplete";
    }

    @RequestMapping(params="redirectToTeacherChose")
    public String showPlist(@RequestParam("pid") String id,ProjectForm form,
                                Model model,Pageable pageable){
        Page<firstchoice> page =  firstService.findByPID(id,pageable);
        ArrayList<subs> sublist = new ArrayList<>();

        for(firstchoice fc:page){
            subs s = new subs();
            String SID = fc.getSID();
            Student student = studentService.findOne(SID);
            s.setPID(fc.getPID());
            s.setLogtime(fc.getLogtime());
            s.setSEmail(student.getEmail());
            s.setSN(student.getName());
            s.setSID(student.getSID());
            sublist.add(s);
//            fc.setSID(student.getName());
        }
        model.addAttribute("subs",page);
        model.addAttribute("subslist",sublist);
        return "project/subs";
    }


    @RequestMapping(params="finalize")
    public String FinalChoose(@RequestParam("pid") String id,@RequestParam("sid") String sid, Model mode,RedirectAttributes attr){
        projectService.finalize(id,sid);
        firstService.finalize(id,sid);
        studentService.finalize(sid,id);
        return "project/finalComplete";
    }

    @RequestMapping(params = "add")
    public String AddOne(@RequestParam("pid") String id,RedirectAttributes attr) {
        projectService.add(id);
        return "redirect:/project/list";
    }
}
