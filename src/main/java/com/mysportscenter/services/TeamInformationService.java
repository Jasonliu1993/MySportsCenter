package com.mysportscenter.services;

import com.mysportscenter.dao.TeamInformationDao;
import com.sun.javafx.collections.MappingChange;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Jason on 4/9/17.
 */
@Component
public class TeamInformationService {
    @Resource
    TeamInformationDao teamInformationDao;

    public String getTeamName(String id) {
        return teamInformationDao.getTeamName(id);
    }
}
