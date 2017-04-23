package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.TeamRankingListService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/1/17.
 */
@Controller
public class TeamRankingListController {
    @Resource
    TeamRankingListService teamRankingListService;
    @RequestMapping("/teamRanking.do")
    public String teamRankingList (ModelMap modelMap) {
        modelMap.addAttribute("teamRankingInfo",teamRankingListService.getAllTeamInformation());
        modelMap.addAttribute("teamCount",teamRankingListService.getAllTeamInformation().size());
        return "/newsportal/teamRanking.jsp";
    }
}
