package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.TeamInformation;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */
@Component
public interface TeamInformationDao {
    List<TeamInformation> selectAll ();
    String getTeamLogo (String ID);
    int getTeamCount();
    String getTeamName(String id);
    TeamInformation getTeamInformationById(String id);
}
