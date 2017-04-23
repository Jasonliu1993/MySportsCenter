package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.TeamVersus;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 4/10/17.
 */
@Component
public interface TeamVersusDao {
    List<TeamVersus> getTeamVersusByHomeTeamId(String id);
}
