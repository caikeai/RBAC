package com.henleo.rbac.domian;

import java.io.Serializable;

/**
 * 角色实体类
 */
public class Role implements Serializable {
    private int role_id;
    private String role_name;

    public Role() {
    }

    /**
     * 定义排除主键的构造方法
     */
    public Role(String role_name) {
        this.role_name = role_name;
    }

    public Role(int role_id, String role_name) {
        this.role_id = role_id;
        this.role_name = role_name;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    @Override
    public String toString() {
        return "Role{" +
                "role_id=" + role_id +
                ", role_name='" + role_name + '\'' +
                '}';
    }
}
