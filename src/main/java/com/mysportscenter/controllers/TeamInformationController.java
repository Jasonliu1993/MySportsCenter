package com.mysportscenter.controllers;

import com.mysportscenter.services.TeamInformationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/12/17.
 */
@Controller
public class TeamInformationController {
    @Resource
    TeamInformationService teamInformationService;

    @RequestMapping("/teamInformation.do")

    public String getTeamInfo(@RequestParam("id") String id, ModelMap modelMap) {
        System.out.println(id);
        modelMap.addAttribute("msg","This is team information page!");
        return "/newsportal/teamInformation.jsp";
    }
}
