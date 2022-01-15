package com.balancediary.diary.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Configuration
public class summernoteConfig {
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/temp/**")
                .addResourceLocations("file:///C:/temp/");
    }
}

