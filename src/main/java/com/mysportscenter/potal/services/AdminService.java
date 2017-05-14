package com.mysportscenter.potal.services;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

/**
 * Created by Jason on 5/14/17.
 */
@Component
public class AdminService {

    public void saveAvatar(MultipartFile file, HttpServletRequest httpServletRequest) {
        System.out.println("开始");
        String path = httpServletRequest.getSession().getServletContext().getRealPath("uploadFiles");
        String fileName = file.getOriginalFilename();
//        String fileName = new Date().getTime()+".jpg";
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
