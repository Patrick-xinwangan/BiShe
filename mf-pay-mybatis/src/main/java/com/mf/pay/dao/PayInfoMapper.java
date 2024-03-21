package com.mf.pay.dao;

import com.mf.pay.pojo.PayInfo;
import org.springframework.stereotype.Component;

@Component
public interface PayInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PayInfo record);

//    @Select("slect")
    int insertSelective(PayInfo record);

    PayInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PayInfo record);

    int updateByPrimaryKey(PayInfo record);

	PayInfo selectByOrderNo(Long orderNo);
}