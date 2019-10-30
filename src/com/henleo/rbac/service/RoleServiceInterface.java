package com.henleo.rbac.service;

import com.henleo.rbac.domian.Role;

/**
 * 角色业务接口
 */
public interface RoleServiceInterface {
    /**
     * 添加角色信息
     * @param role
     */
    void addRole(Role role);
}
