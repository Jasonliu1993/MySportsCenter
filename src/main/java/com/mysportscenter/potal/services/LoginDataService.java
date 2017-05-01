package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.LoginDataDao;
import com.mysportscenter.potal.entity.LoginData;
import com.mysportscenter.utilities.DateUtility;
import com.mysportscenter.utilities.KeyValue;
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

    public void saveNewUser(String userName, String password) {
        String newUserId = KeyValue.getKeyValue();
        String currentDateTime = DateUtility.getCurrentDate();
        LoginData loginData = new LoginData();
        loginData.setId(newUserId);
        loginData.setUsername(userName);
        loginData.setPassword(password);
        loginData.setCreateDatetime(currentDateTime);
        loginDataDao.saveNewUser(loginData);
    }
}
