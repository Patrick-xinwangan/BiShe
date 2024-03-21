package com.mf.pay.service.impl;

import com.lly835.bestpay.enums.BestPayTypeEnum;
import com.lly835.bestpay.model.PayRequest;
import com.lly835.bestpay.model.PayResponse;
import com.lly835.bestpay.service.BestPayService;
import com.mf.pay.service.IPayService2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Slf4j
@Service
public class PayServiceImpl2 implements IPayService2 {


    @Autowired
    private BestPayService bestPayService;

    public PayResponse create2(String orderId, BigDecimal amount, BestPayTypeEnum payType){

        PayRequest request = new PayRequest();
        request.setOrderName("8052016-沐课学堂支付sdk");
        request.setOrderId(orderId);
        request.setOrderAmount(amount.doubleValue());
        request.setPayTypeEnum(payType);

        PayResponse response = bestPayService.pay(request);
        log.info("发起支付 response={}", response);

        return response;
    }
}
