package com.mf.pay.service.impl;

import com.mf.pay.PayApplicationTest;
//import com.mf.pay.PayApplicationTests;
import com.lly835.bestpay.enums.BestPayTypeEnum;
import org.junit.Test;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;

/**
 * Created by mf
 */
public class PayServiceTest extends PayApplicationTest {

	@Autowired
	private PayServiceImpl payService;

	@Autowired
	private AmqpTemplate amqpTemplate;

	@Autowired
	private PayServiceImpl2 payService2;

	@Test
	public void create() {
		//BigDecimal.valueOf(0.01)
		//new BigDecimal("0.01")  千万不要用 new BigDecimal(0.01)
		payService.create("1234567891234571", BigDecimal.valueOf(0.02), BestPayTypeEnum.WXPAY_NATIVE);
	}

	@Test
	public void sendMQMsg() {
		amqpTemplate.convertAndSend("payNotify", "hello");
	}

	@Test
	public void create2() {
		//BigDecimal.valueOf(0.01)
		//new BigDecimal("0.01")  千万不要用 new BigDecimal(0.01)

		payService2.create2("12345678912345600", BigDecimal.valueOf(0.02), BestPayTypeEnum.WXPAY_NATIVE);

		payService2.create2("1234567891234591", BigDecimal.valueOf(0.02), BestPayTypeEnum.WXPAY_NATIVE);

	}
}