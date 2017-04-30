package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.LoginDataDao;
import com.mysportscenter.potal.entity.LoginData;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by Jason on 4/26/17.
 */
@Component
public class LoginDataService {
    @Resource
    LoginDataDao loginDataDao;

    public int getExistById(String id) {
        return loginDataDao.getExistById(id);
    }

    public LoginData getLoginDataByUsernameAndPassword(String username, String password) {
        return loginDataDao.getLoginDataByUsernameAndPassword(username, password);
    }
}
