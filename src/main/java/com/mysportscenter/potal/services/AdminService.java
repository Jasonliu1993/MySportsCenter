package com.mysportscenter.potal.services;

import com.mysportscenter.potal.dao.AdminConfDao;
import com.mysportscenter.potal.dao.AvatarDao;
import com.mysportscenter.potal.dao.LoginDataDao;
import com.mysportscenter.potal.entity.AdminConf_F;
import com.mysportscenter.potal.entity.AdminConf_S;
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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Jason on 5/14/17.
 */
@Component
public class AdminService {

    @Resource
    AvatarDao avatarDao;

    @Resource
    LoginDataDao loginDataDao;

    @Resource
    AdminConfDao adminConfDao;

    public void saveAvatar(MultipartFile file, HttpSession httpSession, HttpServletRequest httpServletRequest) {
        System.out.println("开始");

            String path = httpServletRequest.getSession().getServletContext().getRealPath("uploadFiles");
//            String path = "/opt/apache-tomcat-8.5.15/webapps/MySportsCenter/uploadFiles/HP1H4wgn59J.jpg";
        System.out.println("++++++" + (path.lastIndexOf("MySportsCenter") + 14) + "+++++++++++");
        System.out.println("++++++" + path.substring(path.lastIndexOf("MySportsCenter") + 14,path.length()) + "+++++++++++");
        if (avatarDao.getCountAvatarByUser((String)httpSession.getAttribute("userName")) == 0) {
            String key = KeyValue.getKeyValue();
            Avatar avatar = new Avatar();
            avatar.setId(key);
            avatar.setVersion(1);
            avatar.setAvatarPath(path.substring(path.lastIndexOf("MySportsCenter") + 14,path.length()) + "/" + key + ".jpg");
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

        } else {
            HandleFile.deleteFile(avatarDao.getAvatarByUser((String)httpSession.getAttribute("userName")).getAvatarPath());
            Avatar avatar = avatarDao.getAvatarByUser((String)httpSession.getAttribute("userName"));
            avatar.setAvatarPath(path.substring(path.lastIndexOf("MySportsCenter") + 14,path.length()) + "/" + avatar.getId() + ".jpg");
            avatar.setCreateDatetime(DateUtility.getCurrentDate());
            File targetFile = HandleFile.createFile(path, avatar.getId() + ".jpg");
            //保存
            try {
                file.transferTo(targetFile);
                avatarDao.updateAvatarById(avatar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }


    }

    public Avatar getAvatarByUser (String userId) {
        return avatarDao.getAvatarByUser(userId);
    }

    public int getCountAvatarByUser (String userId) {
        return avatarDao.getCountAvatarByUser(userId);
    }

    public Map<String,List<AdminConf_S>> getLeftNav () {
        Map<String,List<AdminConf_S>> stringListMap = new LinkedHashMap<String, List<AdminConf_S>>();

        for(AdminConf_F adminConf_F : adminConfDao.getAdminConf_F()) {
            stringListMap.put(adminConf_F.getFirstTitle(),adminConfDao.getAdminConf_FByFirstId(adminConf_F.getId()));
        }

        return stringListMap;
    }

    public String getAvatarById (String userId) {
        return avatarDao.getAvatarPathById(userId);
    }
}
