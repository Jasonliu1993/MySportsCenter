package com.mysportscenter.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Jason on 4/5/17.
 */
@Controller
public class TeamNewsController {
    @RequestMapping("/teamNews.do")
    public String teamNewsList(ModelMap modelMap){
        return "/newsportal/teamNews.jsp";
    }
}
