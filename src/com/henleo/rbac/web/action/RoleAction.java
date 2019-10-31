package com.henleo.rbac.web.action;

import com.henleo.rbac.domian.Role;
import com.henleo.rbac.service.RoleServiceInterface;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * 角色控制类
 */
// @Controller // 该注解用于指定当前类为控制层类,该类对象由 Spring 框架自动创建 默认将类名首字母小写作为对象名 roleAction
public class RoleAction {

    @Resource
    private RoleServiceInterface roleServiceImpl;

    public RoleServiceInterface getRoleServiceImpl() {
        return roleServiceImpl;
    }

    public void setRoleServiceImpl(RoleServiceInterface roleServiceImpl) {
        this.roleServiceImpl = roleServiceImpl;
    }

    // 角色信息采集
    // 该注解表示 SpringMVC 中的控制器,其中 value 表示请求该控制器时使用的资源名称,method 指定请求方式

    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public String register() {

        // 添加角色
        roleServiceImpl.addRole(new Role("VIP用户"));

        // 返回跳转资源名称
        return "success";
    }

}
