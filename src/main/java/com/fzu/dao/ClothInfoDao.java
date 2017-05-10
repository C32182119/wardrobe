package com.fzu.dao;

import com.fzu.entity.ClothInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClothInfoDao extends BaseDao<ClothInfo> {



    public List<ClothInfo> getClothInfoByUserId(String userId){
        String GET_CLOTHINFO_BY_USERID = "from ClothInfo c where c.userId = ?";
        return (List<ClothInfo>)find(GET_CLOTHINFO_BY_USERID, userId);
    }
}
