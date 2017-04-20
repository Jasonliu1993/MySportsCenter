package com.mysportscenter.controllers;

import com.mysportscenter.services.TeamVideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/18/17.
 */
@Controller
public class TeamVideoController {
    @Resource
    TeamVideoService teamVideoService;

    @RequestMapping("/TeamVideo.do")
    public String TeamVideoList(ModelMap modelMap) {
        return "/newsportal/teamVideoList.jsp";
    }
}
