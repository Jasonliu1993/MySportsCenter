package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.AdminConf_F;
import com.mysportscenter.potal.entity.AdminConf_S;

import java.util.List;


/**
 * Created by Jason on 5/14/17.
 */
public interface AdminConfDao {
    List<AdminConf_F> getAdminConf_F();
    List<AdminConf_S> getAdminConf_FByFirstId(String F_Id);
}
