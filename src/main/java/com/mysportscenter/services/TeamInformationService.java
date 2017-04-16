package com.mysportscenter.services;

import com.mysportscenter.dao.TeamInformationDao;
import com.mysportscenter.javabeans.TeamInformation;
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

    public TeamInformation getTeamInformationById(String id) {
        return teamInformationDao.getTeamInformationById(id);
    }
}
