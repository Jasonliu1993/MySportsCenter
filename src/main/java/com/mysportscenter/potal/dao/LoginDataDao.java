package com.mysportscenter.potal.dao;

import com.mysportscenter.potal.entity.LoginData;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

/**
 * Created by Jason on 4/26/17.
 */
@Component
public interface LoginDataDao {
    int getExistById(String id);
    LoginData getLoginDataByUsernameAndPassword(@Param("username") String username,@Param("password") String password);
    void saveNewUser(LoginData loginData);
}
