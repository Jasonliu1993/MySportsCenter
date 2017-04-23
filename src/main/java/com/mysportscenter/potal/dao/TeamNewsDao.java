package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.TeamNews;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */
@Component
public interface TeamNewsDao {
    List<TeamNews> selectTop6TeamNewsAndLogoPath ();
    List<TeamNews> selectAllTeamNewsAndLogoPathTop5ById (String id);
    TeamNews selectTeamNewsById (String id );
    List<TeamNews> selectTeamNewsByTeamId (String id );
}
