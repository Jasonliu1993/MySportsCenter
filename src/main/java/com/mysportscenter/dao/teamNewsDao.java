package com.mysportscenter.dao;

import com.mysportscenter.javabeans.TeamNews;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 4/1/17.
 */
@Component
public interface TeamNewsDao {
    List<TeamNews> selectTop6TeamNewsAndLogoPath ();
}