package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.entity.TeamPlayer;
import com.mysportscenter.potal.entity.TeamVersus;
import com.mysportscenter.potal.services.TeamInformationService;
import com.mysportscenter.potal.services.TeamPlayerService;
import com.mysportscenter.potal.services.TeamVersusService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Jason on 4/12/17.
 */
@Controller
public class TeamInformationController {
    @Resource
    TeamInformationService teamInformationService;
    @Resource
    TeamPlayerService teamPlayerService;
    @Resource
    TeamVersusService teamVersusService;

    @RequestMapping("/teamInformation.do")

    public String getTeamInfo(@RequestParam("id") String id, ModelMap modelMap) {
        System.out.println(id);
        HashMap<String,Integer> hashMap = teamPlayerService.getTeamPlayerLocationCountByTeamId(id);
        List<TeamPlayer> teamPlayers = teamPlayerService.getTeamPlayerListByTeamId(id);
        List<TeamVersus> teamVersuses = teamVersusService.getTeamVersusListByHomeTeamId(id);
        HashMap<String,String> teamVersusName = new HashMap<String, String>();
        for (TeamVersus teamVersus : teamVersuses){
            teamVersusName.put(teamVersus.getHomeTeamId(),teamInformationService.getTeamName(teamVersus.getHomeTeamId()));
            teamVersusName.put(teamVersus.getVisitingTeamId(),teamInformationService.getTeamName(teamVersus.getVisitingTeamId()));
        }
        modelMap.addAttribute("locationCount",hashMap);
        modelMap.addAttribute("teamPlayer",teamPlayers);
        modelMap.addAttribute("teamVersus",teamVersuses);
        modelMap.addAttribute("teamVersusName",teamVersusName);
        modelMap.addAttribute("teamInformation",teamInformationService.getTeamInformationById(id));
        return "/newsportal/teamInformation.jsp";
    }
}
