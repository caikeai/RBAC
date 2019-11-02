package com.henleo.rbac.service;

import com.henleo.rbac.domian.Menu;

import java.util.List;

/**
 * 菜单业务接口
 */
public interface MenuServiceInterface {

    /**
     * 根据父菜单，查询所有子菜单
     * @param parentId 菜单 ID 0：表示一级菜单
     * @return 所有对应的子菜单
     */
    List<Menu> findByParentId(int parentId);

    /**
     * 查询所有菜单
     * @return
     */
    List<Menu> findAll();

    /**
     * 添加菜单
     * @param menu
     */
    void add(Menu menu);

    /**
     * 根据 id 删除指定菜单
     * @param id
     */
    void delete(int id);
}
