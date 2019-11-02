package com.henleo.rbac.domian;

import java.io.Serializable;
import java.util.Objects;

/**
 * 菜单实体类
 */
public class Menu implements Serializable {
    private int menu_id;
    private String menu_name;
    private int parent_id;
    private String url;

    public Menu() {
    }

    public Menu(String menu_name, int parent_id, String url) {
        this.menu_name = menu_name;
        this.parent_id = parent_id;
        this.url = url;
    }

    public Menu(int menu_id, String menu_name, int parent_id, String url) {
        this.menu_id = menu_id;
        this.menu_name = menu_name;
        this.parent_id = parent_id;
        this.url = url;
    }

    public int getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public int getParent_id() {
        return parent_id;
    }

    public void setParent_id(int parent_id) {
        this.parent_id = parent_id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "menu_id=" + menu_id +
                ", menu_name='" + menu_name + '\'' +
                ", parent_id=" + parent_id +
                ", url=" + url +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Menu menu = (Menu) o;
        return menu_id == menu.menu_id &&
                parent_id == menu.parent_id &&
                Objects.equals(menu_name, menu.menu_name) &&
                Objects.equals(url, menu.url);
    }

    @Override
    public int hashCode() {
        return Objects.hash(menu_id, menu_name, parent_id, url);
    }
}
