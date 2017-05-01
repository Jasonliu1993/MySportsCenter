package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.ForumDao;
import com.mysportscenter.potal.entity.ForumContent;
import com.mysportscenter.potal.entity.ForumTheme;

import java.util.LinkedList;
import java.util.List;

import com.mysportscenter.utilities.DateUtility;
import com.mysportscenter.utilities.KeyValue;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Jason on 4/30/17.
 */
@Component
public class ForumService {
    @Resource
    ForumDao forumDao;

    public List<ForumTheme> getAllForumTheme() {
        List<ForumTheme> list = new LinkedList<ForumTheme>();
        for (ForumTheme forumTheme : forumDao.getAllForumTheme()) {
            /***
             * 设置最后更新人
             */
            forumTheme.setCustom1((forumDao.getLastForumCreatorByid(forumTheme.getId())).getCreateUser());
            /***
             * 设置最后更新时间
             */
            forumTheme.setCustom2((forumDao.getLastForumCreatorByid(forumTheme.getId())).getCreateDatetime());
            list.add(forumTheme);
        }
        return list;
    }

    public List<ForumContent> getAllForumContentByid(String id) {
        return forumDao.getAllForumContentByid(id);
    }

    public void saveNewForum(String newForumThemeId, String theme, String contentArea, HttpSession session) {
        String newForumContentId = KeyValue.getKeyValue();
        String currentDateTime = DateUtility.getCurrentDate();
        ForumTheme forumTheme = new ForumTheme();
        ForumContent forumContent = new ForumContent();
        forumTheme.setId(newForumThemeId);
        forumTheme.setForumCreaterRefId((String)session.getAttribute("userName"));
        forumTheme.setForumTheme(theme);
        forumTheme.setPostDatetime(currentDateTime);
        forumContent.setId(newForumContentId);
        forumContent.setCreateUser((String)session.getAttribute("userName"));
        forumContent.setForumContent(contentArea);
        forumContent.setForumThemeId(newForumThemeId);
        forumContent.setCreateDatetime(currentDateTime);
        forumContent.setOrderId(1);
        forumDao.saveForumTheme(forumTheme);
        forumDao.saveForumContent(forumContent);
    }

    public void saveNewReply(String ForumThemeId, String contentArea, HttpSession session) {
        String newForumContentId = KeyValue.getKeyValue();
        String currentDateTime = DateUtility.getCurrentDate();
        ForumContent forumContent = new ForumContent();
        forumContent.setId(newForumContentId);
        forumContent.setCreateUser((String)session.getAttribute("userName"));
        forumContent.setForumContent(contentArea);
        forumContent.setForumThemeId(ForumThemeId);
        forumContent.setCreateDatetime(currentDateTime);
        System.out.println("+++++" + forumDao.findMaxForumContentOrderId(ForumThemeId) + "++++");
        forumContent.setOrderId(forumDao.findMaxForumContentOrderId(ForumThemeId) + 1);
        forumDao.saveForumContent(forumContent);
    }

}
