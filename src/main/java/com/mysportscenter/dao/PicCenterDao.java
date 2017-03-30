package com.mysportscenter.dao;

import com.mysportscenter.javabeans.PicCenter;

import java.util.LinkedList;

/**
 * Created by Jason on 3/30/17.
 */
public interface PicCenterDao {
    public LinkedList<PicCenter> selectTop5Pic ();
}
