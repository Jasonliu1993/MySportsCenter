package com.mysportscenter.potal.entity;

/**
 * Created by Jason on 3/30/17.
 */
public class TeamNews {
    private String id;
    private int version;
    private String newsTitle;
    private String newsContent;
    private String refKeyForTeam;
    private String refKeyForPerson;
    private String updateTime;
    private String custom1;
    private String custom2;
    private String custom3;
    private String custom4;
    private String custom5;

    private String teamLogoPath;

    public String getTeamLogoPath() {
        return teamLogoPath;
    }

    public void setTeamLogoPath(String teamLogoPath) {
        this.teamLogoPath = teamLogoPath;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public String getRefKeyForTeam() {
        return refKeyForTeam;
    }

    public void setRefKeyForTeam(String refKeyForTeam) {
        this.refKeyForTeam = refKeyForTeam;
    }

    public String getRefKeyForPerson() {
        return refKeyForPerson;
    }

    public void setRefKeyForPerson(String refKeyForPerson) {
        this.refKeyForPerson = refKeyForPerson;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getCustom1() {
        return custom1;
    }

    public void setCustom1(String custom1) {
        this.custom1 = custom1;
    }

    public String getCustom2() {
        return custom2;
    }

    public void setCustom2(String custom2) {
        this.custom2 = custom2;
    }

    public String getCustom3() {
        return custom3;
    }

    public void setCustom3(String custom3) {
        this.custom3 = custom3;
    }

    public String getCustom4() {
        return custom4;
    }

    public void setCustom4(String custom4) {
        this.custom4 = custom4;
    }

    public String getCustom5() {
        return custom5;
    }

    public void setCustom5(String custom5) {
        this.custom5 = custom5;
    }

    @Override
    public String toString() {
        return "TeamNews{" +
                "id='" + id + '\'' +
                ", version=" + version +
                ", newsTitle='" + newsTitle + '\'' +
                ", newsContent='" + newsContent + '\'' +
                ", refKeyForTeam='" + refKeyForTeam + '\'' +
                ", refKeyForPerson='" + refKeyForPerson + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", custom1='" + custom1 + '\'' +
                ", custom2='" + custom2 + '\'' +
                ", custom3='" + custom3 + '\'' +
                ", custom4='" + custom4 + '\'' +
                ", custom5='" + custom5 + '\'' +
                ", teamLogoPath='" + teamLogoPath + '\'' +
                '}';
    }
}
