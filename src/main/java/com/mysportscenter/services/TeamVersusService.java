package com.mysportscenter.services;

import com.mysportscenter.dao.TeamVersusDao;
import com.mysportscenter.javabeans.TeamVersus;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Jason on 4/11/17.
 */
@Component
public class TeamVersusService {
    @Resource
    TeamVersusDao teamVersusDao;
    public List<TeamVersus> getTeamVersusListByHomeTeamId(String id){
        return teamVersusDao.getTeamVersusByHomeTeamId(id);
    }
}
