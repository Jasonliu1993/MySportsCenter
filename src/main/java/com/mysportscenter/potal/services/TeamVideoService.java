package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.TeamInformationDao;
import com.mysportscenter.potal.dao.TeamVideoDao;
import com.mysportscenter.potal.entity.TeamInformation;
import com.mysportscenter.potal.entity.TeamVideo;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Jason on 4/18/17.
 */
@Component
public class TeamVideoService {
    @Resource
    TeamInformationDao teamInformationDao;
    @Resource
    TeamVideoDao teamVideoDao;

    public TeamVideo getTeamVideoById(String id) {
        return teamVideoDao.getTeamVideoById(id);
    }

    public List<TeamVideo> getAllTeamVideoByTeamId(String id) {
        return teamVideoDao.getAllTeamVideoByTeamId(id);
    }

    public HashMap<String, List<TeamVideo>> getTop5VideoEveryteam() {
        HashMap<String, List<TeamVideo>> hashMap = new HashMap<String, List<TeamVideo>>();
        ArrayList<TeamInformation> teamCount = (ArrayList<TeamInformation>) teamInformationDao.selectAll();
        for (TeamInformation teamInformation : teamCount) {
            List<TeamVideo> teamVideos = teamVideoDao.selectAllTeamVideoAndLogoPathTop5ById(teamInformation.getId());
            hashMap.put(teamInformation.getTeamName(), teamVideos);
        }
        return hashMap;
    }

    public List<TeamVideo> getTop5TeamVideoByTeamId(String id) {
        return teamVideoDao.selectAllTeamVideoAndLogoPathTop5ById(id);
    }
}
