package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.MenuDaoInterface;

import javax.annotation.Resource;

/**
 * 菜单业务实现类
 */
public class MenuServiceImpl {
    @Resource
    private MenuDaoInterface menuDaoImpl;

    public MenuDaoInterface getMenuDaoImpl() {
        return menuDaoImpl;
    }

    public void setMenuDaoImpl(MenuDaoInterface menuDaoImpl) {
        this.menuDaoImpl = menuDaoImpl;
    }


}
