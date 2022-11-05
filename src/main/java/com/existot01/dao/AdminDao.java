package com.existot01.dao;

import com.existot01.domain.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AdminDao {

    @Select("select * from admin where Aname = #{id} and Apassword = #{pwd}")
    public Admin getByIdPassword(@Param("id") String id, @Param("pwd") String password);
}
