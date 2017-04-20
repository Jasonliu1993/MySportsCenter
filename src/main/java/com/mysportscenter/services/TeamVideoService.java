package com.mysportscenter.services;

import com.mysportscenter.dao.TeamVideoDao;
import com.mysportscenter.javabeans.TeamVideo;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/18/17.
 */
@Component
public class TeamVideoService {
    @Resource
    TeamVideoDao teamVideoDao;
    public TeamVideo getTeamVideoByTeamId(String id){
        return teamVideoDao.getTeamVideoByTeamId(id);
    }
}
