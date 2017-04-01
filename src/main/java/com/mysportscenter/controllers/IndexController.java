package com.mysportscenter.controllers;

import com.mysportscenter.dao.PicCenterDao;
import com.mysportscenter.javabeans.PicCenter;
import com.mysportscenter.services.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Jason on 3/26/17.
 */
@Controller
public class IndexController {
    @Resource
    IndexService indexService;
    @RequestMapping("/index.do")
    public String indexController(ModelMap indexMap) throws IOException, ServletException {
        indexMap.addAttribute("mainPic", indexService.getTop5Pic());
        indexMap.addAttribute("mainNews", indexService.selectTop6TeamNewsAndLogoPath());
        return "/newsportal/portal.jsp";
    }
}
