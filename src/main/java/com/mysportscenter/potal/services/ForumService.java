package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.AvatarDao;
import com.mysportscenter.potal.dao.ForumDao;
import com.mysportscenter.potal.entity.ForumContent;
import com.mysportscenter.potal.entity.ForumTheme;

import java.util.*;

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

    @Resource
    AvatarDao avatarDao;

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

    public List<ForumTheme> getAllForumThemeByCurrentDateTime(String currentDateTime) {
        List<ForumTheme> list = new LinkedList<ForumTheme>();
        for (ForumTheme forumTheme : forumDao.getAllForumThemeByCurrentDateTime(currentDateTime)) {
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

    public String existNewestForumContent(String currentDateTime) {
        return forumDao.existNewestForumContent(currentDateTime);
    }

    public int getCountForumContentByThemeId(String id) {
        return forumDao.getCountForumContentByThemeId(id);
    }

    public List<ForumContent> getForumContentByThemeId(String id, int currentPageNumber) {
        List<ForumContent> forumContents = forumDao.getForumContentByThemeId(id,(currentPageNumber - 1) * 10);
        for (ForumContent forumContent : forumContents) {
            forumContent.setCustom1(avatarDao.getAvatarPathById(forumContent.getCreateUser()));
        }
        return forumContents;
    }

    public int getCountForumThemeByPilot() {
        return forumDao.getCountForumThemeByPilot();
    }

    public List<ForumTheme> getForumThemeByPilot(int currentPageNumber) {
        List<ForumTheme> list = new LinkedList<ForumTheme>();
        for (ForumTheme forumTheme : forumDao.getForumThemeByPilot((currentPageNumber - 1) * 10)) {
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

    public Map<String, String> getPagePilotUrl(int currentPageNumber, int totalPageNumber, String link) {
        LinkedHashMap<String, String> hashMap = new LinkedHashMap<String, String>();
        if (totalPageNumber <= 7){
            for (int i = 1;i <= totalPageNumber; i++) {
                hashMap.put("/" + link + "page=" + Integer.toString(i),Integer.toString(i) );
            }
        }else {
            if (currentPageNumber > 4 && (totalPageNumber - currentPageNumber) > 3 ) {
                hashMap.put("/" + link + "page=" + Integer.toString(currentPageNumber - 3),"..." );

                for (int i = (currentPageNumber - 2 ); i <= (currentPageNumber + 2 ); i++) {
                    hashMap.put("/" + link + "page=" + Integer.toString(i),Integer.toString(i) );
                }

                hashMap.put("/" + link + "page=" + Integer.toString(currentPageNumber + 3),"..." );
            }else if ((totalPageNumber - currentPageNumber) <= 3) {
                hashMap.put("/" + link + "page=" + Integer.toString(currentPageNumber - 6),"..." );

                for (int i = (totalPageNumber - 5 ); i <= totalPageNumber; i++) {
                    hashMap.put("/" + link + "page=" + Integer.toString(i),Integer.toString(i) );
                }
            }else if (currentPageNumber <= 4) {
                for (int i = 1; i <= 6; i++) {
                    hashMap.put("/" + link + "page=" + Integer.toString(i),Integer.toString(i) );
                }
                hashMap.put("/" + link + "page=7","..." );
                System.out.println(hashMap);
            }
        }
        return hashMap;
    }

}
