package com.mysportscenter.services;

import com.mysportscenter.dao.TeamPlayerDao;
import com.mysportscenter.javabeans.TeamPlayer;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashMap;
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

    public HashMap<String,Long> getTeamPlayerLocationCountByTeamId(String id) {
        HashMap<String,Long> returnHashMap = new HashMap<String, Long>();
        for (HashMap<String,Object> hashMap : teamPlayerDao.getTeamPlayerLocationCountByTeamId(id)) {
            returnHashMap.put(hashMap.get("location").toString(),Long.parseLong(hashMap.get("cou").toString()));
        }
        return returnHashMap;
    }
}
