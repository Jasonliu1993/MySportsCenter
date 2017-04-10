package com.mysportscenter.services;

import com.mysportscenter.dao.TeamPlayerDao;
import com.mysportscenter.javabeans.TeamPlayer;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Jason on 4/11/17.
 */
@Component
public class TeamPlayerService {
    @Resource
    TeamPlayerDao teamPlayerDao;
    public List<TeamPlayer> getTeamPlayerListByTeamId(String id){
        return teamPlayerDao.getTeamPlayerByTeamId(id);
    }
}
