package com.mysportscenter.dao;

import com.mysportscenter.javabeans.TeamInformation;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */
@Component
public interface TeamInformationDao {
    List<TeamInformation> selectAll ();
    String getTeamLogo (String ID);
}
