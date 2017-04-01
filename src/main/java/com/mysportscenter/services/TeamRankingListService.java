package com.mysportscenter.services;

import com.mysportscenter.dao.TeamInformationDao;
import com.mysportscenter.javabeans.TeamInformation;
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
}
