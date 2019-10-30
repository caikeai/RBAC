package com.henleo.rbac.test;

import com.henleo.rbac.domian.Role;
import com.henleo.rbac.service.RoleServiceInterface;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.testng.annotations.Test;

public class RoleServiceTest {

    /**
     * 测试角色表添加功能
     */
    @Test
    public void test01() {
        // 获取 Spring 框架的上下文对象
        ApplicationContext ac =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        RoleServiceInterface rsi = (RoleServiceInterface) ac.getBean("roleServiceImpl");
        rsi.addRole(new Role("游客"));
    }
}
