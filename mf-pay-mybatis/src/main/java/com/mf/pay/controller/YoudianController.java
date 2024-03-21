package com.mf.pay.controller;

import com.lly835.bestpay.config.WxPayConfig;
import com.lly835.bestpay.enums.BestPayTypeEnum;
import com.lly835.bestpay.model.PayResponse;
import com.mf.pay.service.impl.PayServiceImpl2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

//import java.math.BigDecimal;
//import java.util.HashMap;
//import java.util.Map;

@Controller
@RequestMapping("/pay2")
@Slf4j
public class YoudianController {

    @Autowired
    private PayServiceImpl2 payService2;

    @Autowired
    private WxPayConfig wxPayConfig;

    @GetMapping("/create2")
    public ModelAndView create2(@RequestParam("orderId") String orderId,
                               @RequestParam("amount") BigDecimal amount,
                               @RequestParam("payType") BestPayTypeEnum bestPayTypeEnum){

        PayResponse response = payService2.create2(orderId, amount, bestPayTypeEnum);

        //支付方式不同，渲染就不同, WXPAY_NATIVE使用codeUrl,  ALIPAY_PC使用body
        Map<String, String> map = new HashMap<>();

        map.put("codeUrl", response.getCodeUrl());
        map.put("orderId", orderId);
        map.put("returnUrl", wxPayConfig.getReturnUrl());
        if(bestPayTypeEnum == BestPayTypeEnum.WXPAY_NATIVE){
            return new ModelAndView("createForWxNative", map);
        }
//        return new ModelAndView("createForWxNative", map);

//        if (bestPayTypeEnum == BestPayTypeEnum.WXPAY_NATIVE) {
//            map.put("codeUrl", response.getCodeUrl());
//            map.put("orderId", orderId);
//            map.put("returnUrl", wxPayConfig.getReturnUrl());
//            return new ModelAndView("createForWxNative", map);
//        }else if (bestPayTypeEnum == BestPayTypeEnum.ALIPAY_PC) {
//            map.put("body", response.getBody());
//            return new ModelAndView("createForAlipayPc", map);
//        }

        throw new RuntimeException("暂不支持的支付类型");

    }

}
