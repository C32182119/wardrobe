package com.fzu.service;


import com.fzu.dao.ClothInfoDao;
import com.fzu.entity.ClothInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClothService {

    @Autowired
    private ClothInfoDao clothInfoDao;

    public void saveClothInfo(ClothInfo clothInfo) {
        clothInfoDao.save(clothInfo);
    }

    public List<ClothInfo> queryClothInfoByUserId(String userId) {
        return clothInfoDao.getClothInfoByUserId(userId);
    }


}
