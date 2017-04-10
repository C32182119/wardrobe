package com.fzu.service;

import com.fzu.dao.InformationDao;
import com.fzu.entity.Information;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InformationService {

    @Autowired
    private InformationDao informationDao;

    public void saveInformation (Information information) {
        informationDao.save(information);
    }

}
