package com.hsdc.epsys.service.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public final class SpringAppCtx {
	private static final ApplicationContext ctx = 
			new ClassPathXmlApplicationContext("classpath*:/META-INF/spring/app-context.xml");
	
	private SpringAppCtx() {}
	
	public static ApplicationContext get() {
		return ctx;
	}
}
