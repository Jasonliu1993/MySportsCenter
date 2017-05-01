package com.mysportscenter.potal.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Jason on 5/1/17.
 */
public class SessionIntercepter implements HandlerInterceptor{
    List<String> allowUrl;

    public List<String> getAllowUrl() {
        return allowUrl;
    }

    public void setAllowUrl(List<String> allowUrl) {
        this.allowUrl = allowUrl;
    }

    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        for (String url : allowUrl) {
            System.out.println("++++url:" + url + "++++++");
            System.out.println("++++RequestUrl:" + httpServletRequest.getRequestURL().toString() + "++++++");
            if (httpServletRequest.getRequestURL().toString().endsWith(url)) {
                HttpSession session = httpServletRequest.getSession();
                if (session.getAttribute("userName") != null) {
                    return true;
                } else {
                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login/login.jsp");
                    return false;
                }
            }
        }

        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
