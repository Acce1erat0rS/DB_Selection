package com.OriginLeague.mining.app.ppts;

import java.io.File;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import com.OriginLeague.mining.app.user.UserSearchForm;
import com.OriginLeague.mining.domain.service.file.FileService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.OriginLeague.mining.domain.model.file;



@Controller
@RequestMapping(value = "ppts")
public class uploadPPTControler {

    @Inject
    FileService fileService;

    @ModelAttribute
    public FileSearchForm setUpForm() {
        return new FileSearchForm();
    }

    @RequestMapping(value = "/uploadPPT")
    public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap model) {

        System.out.println("start");
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
            file f = new file();
            f.setDIR(request.getContextPath()+fileName);
            f.setDownloaded(0);
            f.setName(fileName);
            fileService.save(f);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);

        return "ppts/uploadSuccess";
    }

}
