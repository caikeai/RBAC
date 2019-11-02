package com.henleo.rbac.service;

import com.henleo.rbac.domian.Authorization;

import java.util.List;

/**
 * 权限业务接口
 */
public interface AuthorizationServiceInterface {

    /**
     * 根据 role id 查询对应权限菜单
     * @param roleid 角色 ID
     * @return 完整的菜单信息
     */
    public List<Authorization> findByRoleId(int roleid);

    /**
     * 查询所有
     * @return
     */
    List<Authorization> findAll();

    /**
     * 根据角色 id 删除权限
     * @param roleid
     */
    void delByRoleId(int roleid);

    void addAu(int roleid, int menuid);
}
