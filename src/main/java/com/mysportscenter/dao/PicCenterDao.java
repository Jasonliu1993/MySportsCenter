package com.mysportscenter.dao;

import com.mysportscenter.javabeans.PicCenter;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 3/30/17.
 */
@Component
public interface PicCenterDao {
    List<PicCenter> selectTop5Pic ();
}
