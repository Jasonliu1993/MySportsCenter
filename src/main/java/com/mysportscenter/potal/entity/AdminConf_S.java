package com.mysportscenter.potal.entity;

/**
 * Created by Jason on 5/14/17.
 */
public class AdminConf_S {
    private String id;
    private int version;
    private String secondTitle;
    private String path;
    private String refKeyFirst;
    private String createDatetime;
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

    public String getSecondTitle() {
        return secondTitle;
    }

    public void setSecondTitle(String secondTitle) {
        this.secondTitle = secondTitle;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getRefKeyFirst() {
        return refKeyFirst;
    }

    public void setRefKeyFirst(String refKeyFirst) {
        this.refKeyFirst = refKeyFirst;
    }

    public String getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(String createDatetime) {
        this.createDatetime = createDatetime;
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
        return "AdminConf_S{" +
                "id='" + id + '\'' +
                ", version=" + version +
                ", secondTitle='" + secondTitle + '\'' +
                ", path='" + path + '\'' +
                ", refKeyFirst='" + refKeyFirst + '\'' +
                ", createDatetime='" + createDatetime + '\'' +
                ", custom1='" + custom1 + '\'' +
                ", custom2='" + custom2 + '\'' +
                ", custom3='" + custom3 + '\'' +
                ", custom4='" + custom4 + '\'' +
                ", custom5='" + custom5 + '\'' +
                '}';
    }
}
