package com.fzu.entity;

import javax.persistence.*;
@Entity
@Table(name = "information")
public class Information extends BaseEntity {

    //Id表示主键，IDENTITY表示自增
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="user_id")
    private String userId;

    @Column(name="info_type")
    private int infoType;

    @Column(name="content")
    private String Content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getInfoType() {
        return infoType;
    }

    public void setInfoType(int infoType) {
        this.infoType = infoType;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }
}
