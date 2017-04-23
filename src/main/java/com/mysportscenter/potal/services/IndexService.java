package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.PicCenterDao;
import com.mysportscenter.potal.dao.TeamNewsDao;
import com.mysportscenter.potal.entity.PicCenter;
import com.mysportscenter.potal.entity.TeamNews;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */

@Component
public class IndexService {
    @Resource
    PicCenterDao picCenterDao;
    @Resource
    TeamNewsDao teamNewsDao;

    public List<PicCenter> getTop5Pic(){
        return picCenterDao.selectTop5Pic();
    }

    public List<TeamNews> selectTop6TeamNewsAndLogoPath(){
        return teamNewsDao.selectTop6TeamNewsAndLogoPath();
    }

}
