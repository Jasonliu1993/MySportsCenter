package com.mysportscenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Jason on 3/26/17.
 */
@Controller
public class LoginController {
    @RequestMapping("/login.do")
    public String loginChecked(ModelMap map) throws IOException, ServletException {
        /*ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "Login test!");
        modelAndView.setViewName("loginSuccessful");*/
        map.addAttribute("msg", "Login test!");
        return "/login/loginsuccessful.jsp";
    }
}
