package com.mysportscenter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import java.io.IOException;

/**
 * Created by Jason on 3/26/17.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String indexController(ModelMap indexMap) throws IOException, ServletException {
        /*ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "Login test!");
        modelAndView.setViewName("loginSuccessful");*/
        indexMap.addAttribute("msg", "Login test!");
        return "index.jsp";
    }
}
