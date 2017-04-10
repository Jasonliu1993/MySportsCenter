package com.mysportscenter.javabeans;

/**
 * Created by Jason on 4/10/17.
 */
public class TeamPlayer {
    private String id;
    private int version;
    private String playerName;
    private String playNumber;
    private String playerLocationInTeam;
    private String assist;
    private String goal;
    private String refKeyForTeam;
    private String updateTime;
    private String custom1;
    private String custom2;
    private String custom3;
    private String custom4;
    private String custom5;

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

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getPlayNumber() {
        return playNumber;
    }

    public void setPlayNumber(String playNumber) {
        this.playNumber = playNumber;
    }

    public String getPlayerLocationInTeam() {
        return playerLocationInTeam;
    }

    public void setPlayerLocationInTeam(String playerLocationInTeam) {
        this.playerLocationInTeam = playerLocationInTeam;
    }

    public String getAssist() {
        return assist;
    }

    public void setAssist(String assist) {
        this.assist = assist;
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public String getRefKeyForTeam() {
        return refKeyForTeam;
    }

    public void setRefKeyForTeam(String refKeyForTeam) {
        this.refKeyForTeam = refKeyForTeam;
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
        return "TeamPlayer{" +
                "id='" + id + '\'' +
                ", version=" + version +
                ", playerName='" + playerName + '\'' +
                ", playNumber='" + playNumber + '\'' +
                ", playerLocationInTeam='" + playerLocationInTeam + '\'' +
                ", assist='" + assist + '\'' +
                ", goal='" + goal + '\'' +
                ", refKeyForTeam='" + refKeyForTeam + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", custom1='" + custom1 + '\'' +
                ", custom2='" + custom2 + '\'' +
                ", custom3='" + custom3 + '\'' +
                ", custom4='" + custom4 + '\'' +
                ", custom5='" + custom5 + '\'' +
                '}';
    }
}
