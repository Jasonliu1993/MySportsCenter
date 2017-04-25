package com.mysportscenter.potal.entity;

/**
 * Created by Jason on 4/24/17.
 */
public class ForumContent {
    private String id;
    private int version;
    private int orderId;
    private String forumContent;
    private String createDatetime;
    private String createUser;
    private String forumThemeId;
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

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getForumContent() {
        return forumContent;
    }

    public void setForumContent(String forumContent) {
        this.forumContent = forumContent;
    }

    public String getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(String createDatetime) {
        this.createDatetime = createDatetime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getForumThemeId() {
        return forumThemeId;
    }

    public void setForumThemeId(String forumThemeId) {
        this.forumThemeId = forumThemeId;
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
        return "ForumContent{" +
                "id='" + id + '\'' +
                ", version=" + version +
                ", orderId=" + orderId +
                ", forumContent='" + forumContent + '\'' +
                ", createDatetime='" + createDatetime + '\'' +
                ", createUser='" + createUser + '\'' +
                ", forumThemeId='" + forumThemeId + '\'' +
                ", custom1='" + custom1 + '\'' +
                ", custom2='" + custom2 + '\'' +
                ", custom3='" + custom3 + '\'' +
                ", custom4='" + custom4 + '\'' +
                ", custom5='" + custom5 + '\'' +
                '}';
    }
}
