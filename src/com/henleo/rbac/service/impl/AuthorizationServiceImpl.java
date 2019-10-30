package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.AuthorizationDaoInterface;

import javax.annotation.Resource;

/**
 * 权限业务实现类
 */
public class AuthorizationServiceImpl {
    @Resource
    private AuthorizationDaoInterface authorizationDaoImpl;

    public AuthorizationDaoInterface getAuthorizationDaoImpl() {
        return authorizationDaoImpl;
    }

    public void setAuthorizationDaoImpl(AuthorizationDaoInterface authorizationDaoImpl) {
        this.authorizationDaoImpl = authorizationDaoImpl;
    }


}
