package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.AuthorizationDaoInterface;
import com.henleo.rbac.domian.Authorization;
import com.henleo.rbac.service.AuthorizationServiceInterface;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 权限业务实现类
 */
@Service
public class AuthorizationServiceImpl implements AuthorizationServiceInterface {
    @Resource
    private AuthorizationDaoInterface authorizationDaoImpl;

    public AuthorizationDaoInterface getAuthorizationDaoImpl() {
        return authorizationDaoImpl;
    }

    public void setAuthorizationDaoImpl(AuthorizationDaoInterface authorizationDaoImpl) {
        this.authorizationDaoImpl = authorizationDaoImpl;
    }


    @Override
    public List<Authorization> findByRoleId(int roleid) {
        return authorizationDaoImpl.findByRoleId(roleid);
    }

    @Override
    public List<Authorization> findAll() {
        return null;
    }

    @Override
    @Transactional
    public void delByRoleId(int roleid) {
        authorizationDaoImpl.delByRoleId(roleid);
    }

    @Override
    @Transactional
    public void addAu(int roleid, int menuid) {
        authorizationDaoImpl.addAu(roleid, menuid);
    }
}
