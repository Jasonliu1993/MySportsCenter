package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.entity.ForumTheme;
import com.mysportscenter.potal.services.ForumService;
import com.mysportscenter.utilities.DateUtility;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Jason on 4/23/17.
 */
@Controller
public class ForumMainController {

    @Resource
    ForumService forumService;

    @RequestMapping("forumMain.do")
    public String ForumMainPage(String page,ModelMap modelMap) {
        modelMap.addAttribute("ForumTheme", forumService.getForumThemeByPilot(Integer.parseInt(page)));
        modelMap.addAttribute("visitTime", DateUtility.getCurrentDate());
        modelMap.addAttribute("totalPageNumber", forumService.getCountForumThemeByPilot());
        modelMap.addAttribute("currentPageNumber", page);
        modelMap.addAttribute("pagePilotUrl", forumService.getPagePilotUrl(Integer.parseInt(page),forumService.getCountForumThemeByPilot(),"forumMain.do?"));
        modelMap.addAttribute("control","forumMain");
        return "/bbs/bbsMainPage.jsp";
    }

    @RequestMapping("forumDetail.do")
    public String ForumDetailPage(@RequestParam("Id") String id, String page,ModelMap modelMap) {
        System.out.println("++++++" + page + "+++++++");
        modelMap.addAttribute("ForumContent", forumService.getForumContentByThemeId(id,Integer.parseInt(page)));
        modelMap.addAttribute("totalPageNumber", forumService.getCountForumContentByThemeId(id));
        modelMap.addAttribute("currentPageNumber", page);
        modelMap.addAttribute("pagePilotUrl", forumService.getPagePilotUrl(Integer.parseInt(page),forumService.getCountForumContentByThemeId(id),"forumDetail.do?Id=" + id + "&"));
        modelMap.addAttribute("control","forumDetail");
        return "/bbs/bbsForumDetailPage.jsp";
    }

    @RequestMapping(value = "/remindNewForum.do",method = RequestMethod.POST)
    public void remindNewForum(@RequestParam("currentDateTime") String currentDateTime, HttpServletResponse httpServletResponse) {
        String flag = "";
        if ("X".equals(forumService.existNewestForumContent(currentDateTime))) {
            flag = "[{\"flag\":\"Y\"}]";
        } else {
            flag = "[{\"flag\":\"N\"}]";
        }
        try {
            httpServletResponse.getWriter().print(flag);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/getNewForum.do",method = RequestMethod.POST)
    @ResponseBody
    public List<ForumTheme> getNewForum(@RequestParam("currentDateTime") String currentDateTime) {
        return forumService.getAllForumThemeByCurrentDateTime(currentDateTime);
    }
}
