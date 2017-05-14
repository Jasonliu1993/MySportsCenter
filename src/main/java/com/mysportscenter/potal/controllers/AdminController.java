package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by Jason on 5/14/17.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    AdminService adminService;

    @RequestMapping("/avatar.do")
    public String avatar () {
        return "/admin/personalPage.jsp";
    }

    @RequestMapping(value = "/saveAvatar.do", method = RequestMethod.POST)
    public String saveAvatar (@RequestParam("avatar") MultipartFile file, HttpServletRequest httpServletRequest, ModelMap modelMap) {
        adminService.saveAvatar(file,httpServletRequest);
        return "/admin/personalPage.jsp";
    }
}
