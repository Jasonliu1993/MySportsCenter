package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.ForumService;
import com.mysportscenter.utilities.EscapeWord;
import com.mysportscenter.utilities.KeyValue;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Jason on 5/1/17.
 */
@Controller
@Scope("prototype")
public class ForumSendController {
    @Resource
    ForumService forumService;

    @RequestMapping(value = "/sendNewForum.do", method = RequestMethod.POST)
    public String sendNewForum(String theme, String contentArea, HttpSession session) {
        String newForumThemeId = KeyValue.getKeyValue();
        forumService.saveNewForum(newForumThemeId, theme, contentArea, session);
        return "redirect:/forumDetail.do?Id=" + newForumThemeId + "&page=1";
    }

    @RequestMapping(value = "/sendNewForumContenr.do", method = RequestMethod.POST)
    public String sendNewForumContenr(String forumTheme, String contentArea, String currentPage, HttpSession session) {
        forumService.saveNewReply(forumTheme, EscapeWord.getEscaping(contentArea), session);
        return "redirect:/forumDetail.do?Id=" + forumTheme + "&page=" + forumService.getCountForumContentByThemeId(forumTheme);
    }

    @RequestMapping(value = "/sendNewForumContenrByReply.do", method = RequestMethod.POST)
    public String sendNewForumContentByReply(String forumThemeByReply, String replyContent, String currentPageByReply, HttpSession session) {
        System.out.println("+++++++++" + forumThemeByReply + "++++++++++++");
        System.out.println("+++++++++" + replyContent + "++++++++++++");
        System.out.println("+++++++++" + currentPageByReply + "++++++++++++");

        forumService.saveNewReply(forumThemeByReply, EscapeWord.getEscaping(replyContent), session);
        return "redirect:/forumDetail.do?Id=" + forumThemeByReply + "&page=" + forumService.getCountForumContentByThemeId(forumThemeByReply);
    }
}
