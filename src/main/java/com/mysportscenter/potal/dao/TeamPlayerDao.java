package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.TeamPlayer;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Jason on 4/10/17.
 */
@Component
public interface TeamPlayerDao {
    List<TeamPlayer> getTeamPlayerByTeamId(String id);
    List<HashMap<String,Object>> getTeamPlayerLocationCountByTeamId(String id);
}
