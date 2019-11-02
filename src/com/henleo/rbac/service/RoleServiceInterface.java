package com.henleo.rbac.service;

import com.henleo.rbac.domian.Role;

import java.util.List;

/**
 * 角色业务接口
 */
public interface RoleServiceInterface {
    /**
     * 添加角色信息
     * @param role
     */
    void addRole(Role role);

    /**
     * 查询所有角色
     */
    List<Role> findAll();
}
