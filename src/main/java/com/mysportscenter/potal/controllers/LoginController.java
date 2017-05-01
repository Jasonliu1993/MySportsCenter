package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.entity.LoginData;
import com.mysportscenter.potal.services.LoginDataService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Jason on 4/26/17.
 */
@Controller
public class LoginController {
    @Resource
    LoginDataService loginDataService;

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login (@RequestParam("name") String name, @RequestParam("password") String password, HttpSession session) {
        LoginData loginData = loginDataService.getLoginDataByUsernameAndPassword(name,password);
        if (loginData == null) {
            return "/errorPage.jsp";
        } else {
            session.setAttribute("userName",loginData.getUsername());
            return "/index.jsp";
        }

    }

    @RequestMapping(value = "/newRegister.do", method = RequestMethod.POST)
    public String saveNewRegister(String name, String password, HttpSession session) {
        loginDataService.saveNewUser(name,password);
        session.setAttribute("userName",name);
        return "/index.jsp";
    }
}
