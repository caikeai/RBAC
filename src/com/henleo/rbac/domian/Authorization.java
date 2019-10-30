package com.henleo.rbac.domian;

import java.io.Serializable;

/**
 * 权限实体类
 */
public class Authorization implements Serializable {
    private int authorization_id;
    private Role role;
    private Menu menu;

    public Authorization() {
    }

    public Authorization(Role role, Menu menu) {
        this.role = role;
        this.menu = menu;
    }

    public Authorization(int authorization_id, Role role, Menu menu) {
        this.authorization_id = authorization_id;
        this.role = role;
        this.menu = menu;
    }

    public int getAuthorization_id() {
        return authorization_id;
    }

    public void setAuthorization_id(int authorization_id) {
        this.authorization_id = authorization_id;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    @Override
    public String toString() {
        return "Authorization{" +
                "authorization_id=" + authorization_id +
                ", role=" + role +
                ", menu=" + menu +
                '}';
    }
}
