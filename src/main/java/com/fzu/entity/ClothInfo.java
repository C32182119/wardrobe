package com.fzu.entity;

import javax.persistence.*;

@Entity
@Table(name = "cloth_info")
public class ClothInfo extends BaseEntity {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private int Id;

    @Column(name = "cloth_id")
    private String clothId;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "cloth_name")
    private String clothName;

    @Column(name = "cloth_price")
    private String clothPrice;

    @Column(name = "create_time")
    private String createTime;

    @Column(name = "material")
    private int material;

    @Column(name = "occasion")
    private int occasion;

    @Column(name = "season")
    private int season;

    @Column(name = "color")
    private int color;

    @Column(name = "size")
    private int size;

    @Column(name = "cloth_img")
    private String clothImg;

    @Column(name = "is_cleaned")
    private int isCleaned;

    @Column(name = "is_for_sale")
    private int isForSale;

    @Column(name = "is_selled")
    private int isSelled;

    @Column(name = "others")
    private String others;

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getClothId() {
        return clothId;
    }

    public void setClothId(String clothId) {
        this.clothId = clothId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getClothName() {
        return clothName;
    }

    public void setClothName(String clothName) {
        this.clothName = clothName;
    }

    public String getClothPrice() {
        return clothPrice;
    }

    public void setClothPrice(String clothPrice) {
        this.clothPrice = clothPrice;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public int getMaterial() {
        return material;
    }

    public void setMaterial(int material) {
        this.material = material;
    }

    public int getOccasion() {
        return occasion;
    }

    public void setOccasion(int occasion) {
        this.occasion = occasion;
    }

    public int getSeason() {
        return season;
    }

    public void setSeason(int season) {
        this.season = season;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getClothImg() {
        return clothImg;
    }

    public void setClothImg(String clothImg) {
        this.clothImg = clothImg;
    }

    public int getIsCleaned() {
        return isCleaned;
    }

    public void setIsCleaned(int isCleaned) {
        this.isCleaned = isCleaned;
    }

    public int getIsForSale() {
        return isForSale;
    }

    public void setIsForSale(int isForSale) {
        this.isForSale = isForSale;
    }

    public int getIsSelled() {
        return isSelled;
    }

    public void setIsSelled(int isSelled) {
        this.isSelled = isSelled;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }
}
