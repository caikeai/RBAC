package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.MenuDaoInterface;
import com.henleo.rbac.domian.Menu;
import com.henleo.rbac.service.MenuServiceInterface;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 菜单业务实现类
 */
@Service
public class MenuServiceImpl implements MenuServiceInterface {
    @Resource
    private MenuDaoInterface menuDaoImpl;

    public MenuDaoInterface getMenuDaoImpl() {
        return menuDaoImpl;
    }

    public void setMenuDaoImpl(MenuDaoInterface menuDaoImpl) {
        this.menuDaoImpl = menuDaoImpl;
    }


    @Override
    public List<Menu> findByParentId(int parentId) {
        return menuDaoImpl.findByParentId(parentId);
    }

    @Override
    public List<Menu> findAll() {
        return menuDaoImpl.findAll();
    }

    @Override
    public void add(Menu menu) {
        menuDaoImpl.add(menu);
    }

    @Override
    public void delete(int id) {
        menuDaoImpl.delete(id);
    }
}
