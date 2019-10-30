package com.henleo.rbac.domian;

import java.io.Serializable;

/**
 * 用户实体类
 */
public class Operator implements Serializable {
    private int operator_id;
    private String username;
    private String password;
    private String image;
    /**
     * 外键对应的属性使用引用类型
     */
    private Role role;

    public Operator() {
    }

    public Operator(String username, String password, String image, Role role) {
        this.username = username;
        this.password = password;
        this.image = image;
        this.role = role;
    }

    public Operator(int operator_id, String username, String password, String image, Role role) {
        this.operator_id = operator_id;
        this.username = username;
        this.password = password;
        this.image = image;
        this.role = role;
    }

    public int getOperator_id() {
        return operator_id;
    }

    public void setOperator_id(int operator_id) {
        this.operator_id = operator_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Operator{" +
                "operator_id=" + operator_id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", image='" + image + '\'' +
                ", role=" + role +
                '}';
    }
}
