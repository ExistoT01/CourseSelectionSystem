package com.existot01.service.impl;

import com.existot01.dao.AdminDao;
import com.existot01.domain.Admin;
import com.existot01.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;


    @Override
    public Admin getByIdPassword(String id, String password) {
        return adminDao.getByIdPassword(id, password);
    }
}
