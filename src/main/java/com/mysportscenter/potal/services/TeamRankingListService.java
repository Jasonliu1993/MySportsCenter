package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.TeamInformationDao;
import com.mysportscenter.potal.entity.TeamInformation;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */
@Component
public class TeamRankingListService {
    @Resource
    TeamInformationDao teamInformationDao;

    public List<TeamInformation> getAllTeamInformation() {
        return teamInformationDao.selectAll();
    }
    public int getTeamCount(){
        return teamInformationDao.getTeamCount();
    }
}
