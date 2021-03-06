package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.entity.TeamNews;
import com.mysportscenter.potal.services.TeamInformationService;
import com.mysportscenter.potal.services.TeamNewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/5/17.
 */
@Controller
public class TeamNewsController {
    @Resource
    TeamNewsService teamNewsService;
    @Resource
    TeamInformationService teamInformationService;

    @RequestMapping("/teamNewsSummry.do")
    public String teamNewsList(ModelMap modelMap) {
        modelMap.addAttribute("ListByTeamName", teamNewsService.getTop5NewsEveryteam());
        modelMap.addAttribute("flag","News");
        return "/newsportal/teamSummry.jsp";
    }

    @RequestMapping("/teamNewsDetail.do")
    public String teamNewsDetail(@RequestParam("TNid") String id, ModelMap modelMap) {
        TeamNews teamNews = teamNewsService.getTeamNewsById(id);
        modelMap.addAttribute("newsEntity", teamNews);
        modelMap.addAttribute("flag","News");
        return "/newsportal/teamDetail.jsp";
    }

    @RequestMapping("/teamNewsMore.do")
    public String teamNewsDetailMore(@RequestParam("Tid") String id, ModelMap modelMap) {
        System.out.println("+++++++++++++++++++++");
        System.out.println("Tid=" + id);
        modelMap.addAttribute("teamName", teamInformationService.getTeamName(id));
        modelMap.addAttribute("List", teamNewsService.getTeamNewsByTeamId(id));
        modelMap.addAttribute("flag","News");
        return "/newsportal/teamMore.jsp";
    }
}
