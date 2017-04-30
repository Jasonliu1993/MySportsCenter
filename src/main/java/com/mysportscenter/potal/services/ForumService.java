package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.ForumDao;
import com.mysportscenter.potal.entity.ForumTheme;

import java.util.LinkedList;
import java.util.List;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

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

}
