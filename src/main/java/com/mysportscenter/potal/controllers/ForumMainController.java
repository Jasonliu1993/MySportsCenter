package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.ForumService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Jason on 4/23/17.
 */
@Controller
public class ForumMainController {

    @Resource
    ForumService forumService;

    @RequestMapping("forumMain.do")
    public String ForumMainPage(ModelMap modelMap) {
        modelMap.addAttribute("ForumTheme", forumService.getAllForumTheme());
        return "/bbs/bbsMainPage.jsp";
    }

    @RequestMapping("forumDetail.do")
    public String ForumDetailPage(ModelMap modelMap,@RequestParam("Id") String id) {
        modelMap.addAttribute("ForumContent", forumService.getAllForumContentByid(id));
        return "/bbs/bbsForumDetailPage.jsp";
    }

    @RequestMapping("/SendForum.do")
    public String SendForum(@RequestParam("action") String action, @RequestParam("theme") String theme, @RequestParam("contentArea") String contentArea, HttpSession session) {
        return "";
    }
}
