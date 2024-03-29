package com.henleo.rbac.service.impl;

import com.henleo.rbac.dao.OperatorDaoInterface;
import com.henleo.rbac.domian.Operator;
import com.henleo.rbac.service.OperatorServiceInterface;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户业务实现类
 */
@Service
public class OperatorServiceImpl implements OperatorServiceInterface {

    @Resource
    private OperatorDaoInterface operatorDaoImpl;

    public OperatorDaoInterface getOperatorDaoImpl() {
        return operatorDaoImpl;
    }

    public void setOperatorDaoImpl(OperatorDaoInterface operatorDaoImpl) {
        this.operatorDaoImpl = operatorDaoImpl;
    }

    @Override
    public List<Operator> findAll() {
        return operatorDaoImpl.findAll();
    }

    @Override
    public Operator findByUsernameAndPassword(String username, String password) {
        return operatorDaoImpl.findByUsernameAndPassword(username, password);
    }
}
