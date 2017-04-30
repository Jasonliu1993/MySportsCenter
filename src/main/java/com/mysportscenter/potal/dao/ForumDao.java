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
    ForumContent getLastForumCreatorByid(@Param("id") String id);
}
