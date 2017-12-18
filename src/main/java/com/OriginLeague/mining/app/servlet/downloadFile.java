package com.OriginLeague.mining.app.servlet;
/**
 * Created by Sp1ca on 2017/12/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@Controller
public class downloadFile {
    @RequestMapping("/download")
    public String download(String fileName, HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition", "attachment;fileName="
                + fileName);
        InputStream inputStream=null;
        OutputStream outputStream=null;
        //路径
        String path = request.getSession().getServletContext().getRealPath("upload");
        byte[] bytes = new byte[2048];
        try {
            File file=new File(path+"/"+fileName);
            inputStream = new FileInputStream(file);
            outputStream = response.getOutputStream();
            int length;
            //inputStream.read(bytes)从file中读取数据,-1是读取完的标志
            while ((length = inputStream.read(bytes)) > 0) {
                //写数据
                outputStream.write(bytes, 0, length);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            //关闭输入输出流
            if(outputStream!=null) {
                outputStream.close();
            }
            if(inputStream!=null) {
                inputStream.close();
            }
        }
        return "ppts/list";
    }
}


