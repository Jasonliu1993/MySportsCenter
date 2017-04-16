package com.mysportscenter.controllers;

import com.mysportscenter.services.TeamInformationService;
import com.mysportscenter.services.TeamPlayerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Jason on 4/12/17.
 */
@Controller
public class TeamInformationController {
    @Resource
    TeamInformationService teamInformationService;
    @Resource
    TeamPlayerService teamPlayerService;

    @RequestMapping("/teamInformation.do")

    public String getTeamInfo(@RequestParam("id") String id, ModelMap modelMap) {
        System.out.println(id);
        HashMap<String,Long> hashMap = teamPlayerService.getTeamPlayerLocationCountByTeamId(id);
        System.out.println(hashMap);
        modelMap.addAttribute("msg","This is team information page!");
        return "/newsportal/teamInformation.jsp";
    }
}
