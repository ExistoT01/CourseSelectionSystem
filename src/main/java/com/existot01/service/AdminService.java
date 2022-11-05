package com.existot01.service;

import com.existot01.domain.Admin;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface AdminService {
    /**
     * 根据管理员账户和密码获取管理员对象
     * @param id
     * @param password
     * @return
     */
    public Admin getByIdPassword(String id, String password);
}
