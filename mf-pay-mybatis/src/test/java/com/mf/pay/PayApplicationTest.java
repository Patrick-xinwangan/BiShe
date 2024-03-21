package com.mf.pay;

import com.mf.pay.dao.PayInfoMapper;
import com.mf.pay.pojo.PayInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;


@SpringBootTest
@RunWith(SpringRunner.class)
public class PayApplicationTest {

    @Autowired
    private PayInfoMapper payInfoMapper;

    @Test
    public void testInsert(){

        PayInfo payInfo = new PayInfo(Long.parseLong("13141112"), 1, "WX", BigDecimal.valueOf(0.02));
        System.out.println("数据插入完成");
        System.out.println(payInfoMapper.insertSelective(payInfo));

    }

    @Test
    public void testQuery(){

//        PayInfo payInfo = new PayInfo(Long.parseLong("13141112"), 1, "WX", BigDecimal.valueOf(0.02));
        System.out.println("测试查询开始");
        String userId = "567";
        System.out.println(payInfoMapper.queryByUserId(567));

    }


}
