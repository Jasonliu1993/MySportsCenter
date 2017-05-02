package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.ForumContent;
import com.mysportscenter.potal.entity.ForumTheme;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

/**
 * Created by Jason on 4/30/17.
 */
@Component
public interface ForumDao {
    List<ForumTheme> getAllForumTheme();
    List<ForumTheme> getAllForumThemeByCurrentDateTime(String currentDateTime);
    List<ForumContent> getAllForumContentByid(@Param("id") String id);
    ForumContent getLastForumCreatorByid(@Param("id") String id);
    void saveForumTheme(ForumTheme forumTheme);
    String existForumTheme(@Param("id") String id);
    void saveForumContent(ForumContent forumContent);
    String existForumContent(@Param("id") String id);
    int findMaxForumContentOrderId(String id);
    String existNewestForumContent(String currentDateTime);
}
