package com.OriginLeague.mining.app.ppts;

import com.OriginLeague.mining.domain.model.User;
import com.OriginLeague.mining.domain.model.file;
import com.OriginLeague.mining.domain.service.file.FileService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefaults;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;

@Controller
@RequestMapping(value = "ppts")
public class PptsList {
    @Inject
    protected FileService fileService;

    @RequestMapping("/list")
    public String greeting(@PageableDefaults Pageable pageable, Model model) {
        Page<file> page = fileService.findAll(pageable);
        model.addAttribute("page", page);
        return "ppts/list";
    }


    @RequestMapping(params = "redirectToDownload")
    public String redirectToUpdateForm(@RequestParam("id") Integer id,@RequestParam("dir") String DIR,
                                       RedirectAttributes attr) {
        fileService.add(id);
        attr.addAttribute("id", id);
        return "redirect:/download?fileName="+DIR;
    }

    @RequestMapping(params = "redirectToDelete")
    public String redirectToDelete(@RequestParam("id") Integer id,RedirectAttributes attr){
        file f = fileService.findOne(id);
        fileService.delete(f);
        return "ppts/deleteSuccess";
    }
}
