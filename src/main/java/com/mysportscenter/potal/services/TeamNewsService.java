package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.TeamInformationDao;
import com.mysportscenter.potal.dao.TeamNewsDao;
import com.mysportscenter.potal.entity.TeamInformation;
import com.mysportscenter.potal.entity.TeamNews;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Jason on 4/5/17.
 */
@Component
public class TeamNewsService {
    @Resource
    TeamInformationDao teamInformationDao;
    @Resource
    TeamNewsDao teamNewsDao;

    public HashMap<String, List<TeamNews>> getTop5NewsEveryteam() {
        HashMap<String, List<TeamNews>> teamNewses = new HashMap<String, List<TeamNews>>();
        ArrayList<TeamInformation> teamCount = (ArrayList<TeamInformation>) teamInformationDao.selectAll();
        for (TeamInformation teamInformation: teamCount ) {
            List<TeamNews> teamNews = teamNewsDao.selectAllTeamNewsAndLogoPathTop5ById(teamInformation.getId());
            teamNewses.put(teamInformation.getTeamName(),teamNews);
        }
        return teamNewses;
    }

    public TeamNews getTeamNewsById(String id) {
        TeamNews teamNews = teamNewsDao.selectTeamNewsById(id);
        return teamNews;
    }

    public List<TeamNews> getTeamNewsByTeamId(String id) {
        List<TeamNews> teamNewses = teamNewsDao.selectTeamNewsByTeamId(id);
        return teamNewses;
    }
}
