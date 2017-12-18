package com.OriginLeague.mining.app.KeyPoint;

import com.OriginLeague.mining.domain.model.KeyPoint;
import com.OriginLeague.mining.domain.service.key.KeyService;
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
@RequestMapping("keypoint")
public class KeyPointSearchController {
    @Inject
    protected KeyService keyService;

    @ModelAttribute
    public KeyPointSearchForm setUpForm() {
        return new KeyPointSearchForm();
    }

    @RequestMapping("list")
    public String list(@PageableDefaults Pageable pageable, Model model) {
        Page<KeyPoint> page = keyService.findAll(pageable);
        model.addAttribute("page", page);
        return "keypoint/list";
    }

    @RequestMapping("search")
    public String search(@Valid KeyPointSearchForm form, BindingResult result,
                         @PageableDefaults Pageable pageable, Model model) {
        if (result.hasErrors()) {
            return "keypoint/list";
        }

        String name = form.getName();
        String query = (StringUtils.hasText(name) ? name : "") + "%";
        Page<KeyPoint> page = keyService.findByNameLike(query, pageable);
        model.addAttribute("page", page);
        return "keypoint/list";
    }

    @RequestMapping(params = "redirectToUpdate")
    public String redirectToUpdateForm(@RequestParam("id") Integer id,
            RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/keypoint/update?form";
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDeleteForm(@RequestParam("id") Integer id,
            RedirectAttributes attr) {
        attr.addAttribute("id", id);
        return "redirect:/keypoint/delete?form";
    }

    @RequestMapping(params = "add")
    public String AddOne(@RequestParam("id") Integer id,RedirectAttributes attr) {
        keyService.add(id);
        return "redirect:/keypoint/list";
    }
}
