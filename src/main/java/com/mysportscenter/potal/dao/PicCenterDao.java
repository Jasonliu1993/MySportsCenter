package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.PicCenter;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Jason on 3/30/17.
 */
@Component
public interface PicCenterDao {
    List<PicCenter> selectTop5Pic ();
}
