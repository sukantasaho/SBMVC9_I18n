package com.main;

import java.util.Locale;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@SpringBootApplication
public class Sbmvc9I18nApplication {

	@Bean(name="localeResolver")//activate I18n
	public SessionLocaleResolver createResolver()
	{
		SessionLocaleResolver resolver = new SessionLocaleResolver();
		resolver.setDefaultLocale(new Locale("en", "US"));
		
		return resolver;
	}
	
	//To trap each request and to decide locale specific properties file based on the choosen locale
	@Bean(name="lci")
	public LocaleChangeInterceptor createInterceptor()
	{
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("lang");
		
		return interceptor;
	}
	public static void main(String[] args) {
		SpringApplication.run(Sbmvc9I18nApplication.class, args);
	}

}
