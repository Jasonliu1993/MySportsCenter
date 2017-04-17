package com.mysportscenter.dao;

import com.mysportscenter.javabeans.TeamVideo;
import org.springframework.stereotype.Component;

/**
 * Created by Jason on 4/17/17.
 */
@Component
public interface TeamVideoDao {
    TeamVideo getTeamVideoByTeamId(String id);
}
