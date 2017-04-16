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

    public HashMap<String,Integer> getTeamPlayerLocationCountByTeamId(String id) {
        HashMap<String,Integer> returnHashMap = new HashMap<String, Integer>();
        for (HashMap<String,Object> hashMap : teamPlayerDao.getTeamPlayerLocationCountByTeamId(id)) {
            returnHashMap.put(hashMap.get("location").toString(),(((Integer.parseInt(hashMap.get("cou").toString()) - 1) / 4 + 1) * 100));
        }
        return returnHashMap;
    }
}
