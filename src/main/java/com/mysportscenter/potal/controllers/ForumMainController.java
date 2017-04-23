package com.mysportscenter.potal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Jason on 4/23/17.
 */
@Controller
public class ForumMainController {

    @RequestMapping("forumMain.do")
    public String ForumMainPage(ModelMap modelMap) {
        return "/bbs/bbsMainPage.jsp";
    }
}
