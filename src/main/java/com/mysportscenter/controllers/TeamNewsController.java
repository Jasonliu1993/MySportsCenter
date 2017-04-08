package com.mysportscenter.controllers;

import com.mysportscenter.javabeans.TeamNews;
import com.mysportscenter.services.TeamNewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Jason on 4/5/17.
 */
@Controller
public class TeamNewsController {
    @Resource
    TeamNewsService teamNewsService;

    @RequestMapping("/teamNews.do")
    public String teamNewsList(ModelMap modelMap) {
        modelMap.addAttribute("newsListByTeamName", teamNewsService.getTop5NewsEveryteam());
        return "/newsportal/teamNews.jsp";
    }

    @RequestMapping("/teamNewsDetail.do")
    public String teamNewsDetail(@RequestParam("TNid") String id, ModelMap modelMap) {
        TeamNews teamNews = teamNewsService.getTeamNewsById(id);
        modelMap.addAttribute("newsEntity", teamNews);
        return "/newsportal/teamNewsDetail.jsp";
    }

    @RequestMapping("/teamNewsMore.do")
    public String teamNewsDetailMore(@RequestParam("Tid") String id, ModelMap modelMap) {
        System.out.println(id);
        modelMap.addAttribute("msg", "你好!");
        return "/newsportal/teamNewsMore.jsp";
    }
}
