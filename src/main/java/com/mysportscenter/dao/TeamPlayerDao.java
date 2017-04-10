package com.mysportscenter.dao;

import com.mysportscenter.javabeans.TeamPlayer;

import java.util.List;

/**
 * Created by Jason on 4/10/17.
 */
public interface TeamPlayerDao {
    List<TeamPlayer> getTeamPlayerByTeamId(String id);
}
