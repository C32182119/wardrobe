package com.fzu.entity;

import javax.persistence.*;


@Entity
@Table(name = "market")
public class Market extends BaseEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="user_id")
    private String userId;

    @Column(name="cloth_id")
    private String clothId;

    @Column(name="sale_price")
    private String salePrice;

    @Column(name="is_selled")
    private int isSelled;

    @Column(name="sale_time")
    private String saleTime;

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

    public String getClothId() {
        return clothId;
    }

    public void setClothId(String clothId) {
        this.clothId = clothId;
    }

    public String getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(String salePrice) {
        this.salePrice = salePrice;
    }

    public int getIsSelled() {
        return isSelled;
    }

    public void setIsSelled(int isSelled) {
        this.isSelled = isSelled;
    }

    public String getSaleTime() {
        return saleTime;
    }

    public void setSaleTime(String saleTime) {
        this.saleTime = saleTime;
    }
}