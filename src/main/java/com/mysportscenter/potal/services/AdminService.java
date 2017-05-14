package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.AvatarDao;
import com.mysportscenter.potal.dao.LoginDataDao;
import com.mysportscenter.potal.entity.Avatar;
import com.mysportscenter.utilities.DateUtility;
import com.mysportscenter.utilities.HandleFile;
import com.mysportscenter.utilities.KeyValue;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;

/**
 * Created by Jason on 5/14/17.
 */
@Component
public class AdminService {

    @Resource
    AvatarDao avatarDao;

    @Resource
    LoginDataDao loginDataDao;

    public void saveAvatar(MultipartFile file, HttpSession httpSession, HttpServletRequest httpServletRequest) {
        System.out.println("开始");

        if (avatarDao.getCountAvatarByUser((String)httpSession.getAttribute("userName")) == 0) {
            String path = httpServletRequest.getRealPath("uploadFiles");
            String key = KeyValue.getKeyValue();
            Avatar avatar = new Avatar();
            avatar.setId(key);
            avatar.setVersion(1);
            avatar.setAvatarPath(path + "/" + key + ".jpg");
            avatar.setCreateDatetime(DateUtility.getCurrentDate());
            avatar.setRefKeyUser((String)httpSession.getAttribute("userName"));
            System.out.println(path + "/" + key + ".jpg");
            File targetFile = HandleFile.createFile(path, key + ".jpg");
            //保存
            try {
                file.transferTo(targetFile);
                avatarDao.saveAvatarById(avatar);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }


    }
}
