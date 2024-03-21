package com.mf.pay.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CategoryMapper {

    @Select("select * from mall_category where id = #{id}")
    public Category findById(@Param("id") Integer id);
}
