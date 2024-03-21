package com.mf.pay.service;

import com.lly835.bestpay.enums.BestPayTypeEnum;
import com.lly835.bestpay.model.PayResponse;

import java.math.BigDecimal;

public interface IPayService2 {

    public PayResponse create2(String orderId, BigDecimal amount, BestPayTypeEnum payType);

}
