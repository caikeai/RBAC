package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.RoleDaoInterface;
import com.henleo.rbac.domian.Role;
import com.henleo.rbac.service.RoleServiceInterface;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 角色业务实现类
 */
@Service // 该注解用于指定当前类为业务层类,该类对象由 Spring 框架自动创建 默认将类名首字母小写作为对象名 roleServiceImpl
public class RoleServiceImpl implements RoleServiceInterface {
    /**
     * 该注解会被 Spring 扫描,并为该属性赋值,把同名的 bean 注入给该属性
     */
    @Resource
    private RoleDaoInterface roleDaoImpl;

    public RoleDaoInterface getRoleDaoImpl() {
        return roleDaoImpl;
    }

    public void setRoleDaoImpl(RoleDaoInterface roleDaoImpl) {
        this.roleDaoImpl = roleDaoImpl;
    }

    @Override
    public void addRole(Role role) {
        roleDaoImpl.add(role);
    }
}
