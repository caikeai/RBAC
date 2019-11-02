package com.henleo.rbac.service;

import com.henleo.rbac.domian.Operator;

import java.util.List;

/**
 * 用户业务接口
 */
public interface OperatorServiceInterface {
    /**
     * 查询所有用户
      * @return 所有用户集合
     */
    List<Operator> findAll();

    /**
     * 根据用户名密码查询指定用户
     * @param username
     * @param password
     * @return
     */
    public Operator findByUsernameAndPassword(String username, String password);
}
