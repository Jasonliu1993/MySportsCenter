package com.mysportscenter.potal.entity;

/**
 * Created by Jason on 4/24/17.
 */
public class ForumTheme {
    private String id;
    private int version;
    private String forumTheme;
    private String forumCreaterRefId;
    private String postDatetime;
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

    public String getForumTheme() {
        return forumTheme;
    }

    public void setForumTheme(String forumTheme) {
        this.forumTheme = forumTheme;
    }

    public String getForumCreaterRefId() {
        return forumCreaterRefId;
    }

    public void setForumCreaterRefId(String forumCreaterRefId) {
        this.forumCreaterRefId = forumCreaterRefId;
    }

    public String getPostDatetime() {
        return postDatetime;
    }

    public void setPostDatetime(String postDatetime) {
        this.postDatetime = postDatetime;
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
        return "ForumTheme{" +
                "id='" + id + '\'' +
                ", version=" + version +
                ", forumTheme='" + forumTheme + '\'' +
                ", forumCreaterRefId='" + forumCreaterRefId + '\'' +
                ", postDatetime='" + postDatetime + '\'' +
                ", custom1='" + custom1 + '\'' +
                ", custom2='" + custom2 + '\'' +
                ", custom3='" + custom3 + '\'' +
                ", custom4='" + custom4 + '\'' +
                ", custom5='" + custom5 + '\'' +
                '}';
    }
}
