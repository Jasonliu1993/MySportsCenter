package com.mysportscenter.dao;

import com.mysportscenter.javabeans.TeamPlayer;
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
