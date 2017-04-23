package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.TeamVersusDao;
import com.mysportscenter.potal.entity.TeamVersus;
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
