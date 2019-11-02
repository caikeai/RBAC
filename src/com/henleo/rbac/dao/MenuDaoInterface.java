package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Menu;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 菜单表持久层操作接口
 */
public interface MenuDaoInterface {
    /**
     * 增加菜单
     * @param menu
     */
    @Insert("insert into menu(menu_name, parent_id, url) values(#{menu_name},#{parent_id},#{url, jdbcType=VARCHAR})")
    void add(Menu menu);

    /**
     * 根据 id 删除指定菜单
     * @param id
     */
    @Delete("delete from menu where menu_id = #{id}")
    void delete(@Param("id") int id);

    /**
     * 修改菜单
     * @param menu
     */
    @Update("update menu set menu_name = #{menu_name}, parent_id = #{parent_id}, url = #{url} where menu_id = #{menu_id}")
    void update(Menu menu);

    /**
     * 查询所有菜单
     * @return 所有菜单集合
     */
    @Select("select * from menu")
    List<Menu> findAll();

    /**
     * 根据 id 查找指定菜单
     * @param id
     * @return 指定菜单
     */
    @Select("select * from menu where menu_id = #{id}")
    Menu findById(@Param("id") int id);

    /**
     * 根据 parent id 查询等级菜单
     * @param id
     * @return
     */
    @Select("select * from menu where parent_id = #{id}")
    List<Menu> findByParentId(@Param("id") int id);




}
