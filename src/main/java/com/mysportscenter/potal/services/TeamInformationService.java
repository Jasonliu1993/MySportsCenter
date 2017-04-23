package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.TeamInformationDao;
import com.mysportscenter.potal.entity.TeamInformation;
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
