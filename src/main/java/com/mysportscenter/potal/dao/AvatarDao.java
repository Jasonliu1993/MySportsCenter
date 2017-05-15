package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.Avatar;
import org.springframework.stereotype.Component;

/**
 * Created by Jason on 5/14/17.
 */
@Component
public interface AvatarDao {
    Avatar getAvatarByUser (String UserId);
    int getCountAvatarByUser (String UserId);
    void saveAvatarById (Avatar avatar);
    void updateAvatarById (Avatar avatar);
    String getAvatarPathById (String UserId);
}
