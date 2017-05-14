package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Jason on 5/14/17.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    AdminService adminService;

    @RequestMapping("/avatar.do")
    public String avatar (HttpSession httpSession,ModelMap modelMap) {
        modelMap.addAttribute("avatarSrc",adminService.getAvatarByUser((String)httpSession.getAttribute("userName")));
        modelMap.addAttribute("pageFlag","avatar");
        modelMap.addAttribute("adminConf",adminService.getLeftNav());
        return "/admin/adminMainpage.jsp";
    }

    @RequestMapping(value = "/saveAvatar.do", method = RequestMethod.POST)
    public String saveAvatar (@RequestParam("avatar") MultipartFile file, HttpServletRequest httpServletRequest, HttpSession httpSession, ModelMap modelMap) {
        adminService.saveAvatar(file, httpSession, httpServletRequest);
        return "/admin/avatar.do";
    }
}
