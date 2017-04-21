package com.mysportscenter.controllers;

import com.mysportscenter.javabeans.TeamInformation;
import com.mysportscenter.services.TeamInformationService;
import com.mysportscenter.services.TeamVideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/18/17.
 */
@Controller
public class TeamVideoController {
    @Resource
    TeamVideoService teamVideoService;

    @Resource
    TeamInformationService teamInformationService;

    @RequestMapping("/teamVideoSummry.do")
    public String TeamVideoList(ModelMap modelMap) {
        modelMap.addAttribute("ListByTeamName", teamVideoService.getTop5VideoEveryteam());
        modelMap.addAttribute("flag","Video");
        return "/newsportal/teamSummry.jsp";
    }

    @RequestMapping("/teamVideoMore.do")
    public String teamNewsDetailMore(@RequestParam("Tid") String id, ModelMap modelMap) {
        System.out.println("+++++++++++++++++++++");
        System.out.println("Tid=" + id);
        modelMap.addAttribute("teamName", teamInformationService.getTeamName(id));
        modelMap.addAttribute("List", teamVideoService.getAllTeamVideoByTeamId(id));
        modelMap.addAttribute("flag","Video");
        return "/newsportal/teamMore.jsp";
    }
}
