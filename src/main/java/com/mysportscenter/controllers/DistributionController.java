package com.mysportscenter.controllers;

import com.mysportscenter.javabeans.TeamNews;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Jason on 4/19/17.
 */
@Controller
public class DistributionController {
    @RequestMapping("/teamSummry.do")
    public String teamNewsList(@RequestParam("flag") String flag) {
        if ("News".equals(flag))
            return "/teamNewsSummry.do";
        else if ("Image".equals(flag))
            return "/teamImageSummry.do";
        else if ("Video".equals(flag))
            return "/teamVideoSummry.do";
        else
            return "errorPage.jsp";
    }

    @RequestMapping("/teamDetail.do")
    public String teamNewsDetail(@RequestParam("id") String id, @RequestParam("flag") String flag) {
        if ("News".equals(flag))
            return "/teamNewsDetail.do?TNid=" + id;
        else if ("Image".equals(flag))
            return "/teamImageDetail.do?TNid=" + id;
        else if ("Video".equals(flag))
            return "/teamVideoDetail.do?TNid=" + id;
        else
            return "errorPage.jsp";
    }

    @RequestMapping("/teamMore.do")
    public String teamNewsDetailMore(@RequestParam("id") String id, @RequestParam("flag") String flag) {
        if ("News".equals(flag)) {
            System.out.println("+++++++++++++++++++++");
            System.out.println("/teamNewsMore.do?Tid=" + id);
            return "/teamNewsMore.do?Tid=" + id;
        }else if ("Image".equals(flag))
            return "/teamImageMore.do?Tid=" + id;
        else if ("Video".equals(flag))
            return "/teamVideoMore.do?Tid=" + id;
        else
            return "errorPage.jsp";
    }
}
