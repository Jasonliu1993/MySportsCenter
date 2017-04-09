package com.mysportscenter.services;

import com.mysportscenter.dao.TeamInformationDao;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/9/17.
 */
@Component
public class TeamInformationService {
    @Resource
    TeamInformationDao teamInformationDao;

    public String getTeamName(String id) {
        return teamInformationDao.getTeamName(id);
    }
}
