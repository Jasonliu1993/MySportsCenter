package com.mysportscenter.potal.controllers;

import com.mysportscenter.potal.services.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import java.io.IOException;

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
