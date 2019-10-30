package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Authorization;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 权限表持久层操作接口
 */
public interface AuthorizationDaoInterface {
    /**
     * 增加权限记录
     * @param authorization
     */
    @Insert("insert into authorization(role_id, menu_id) values(#{authorization.role_id}, #{authorization.menu_id})")
    void add(Authorization authorization);

    /**
     * 根据 id 删除指定的角色权限记录
     * @param id
     */
    @Delete("delete from authorization where authorization_id = #{id}")
    void delete(int id);

    /**
     * 修改角色权限记录
     * @param authorization
     */
    @Update("update authorization set role_id = #{authorization.role_id}, menu_id = #{authorization.menu_id} where authorization_id = #{authorization_id}")
    void update(Authorization authorization);

    /**
     * 查询所有权限记录
     * @return 所有权限记录集合
     */
    @Select("select * from authorization")
    List<Authorization> findAll();

    /**
     * 根据 id 查询指定的权限记录
     * @param id
     * @return 指定权限记录
     */
    @Select("select * from authorization where authorization_id = #{id}")
    Authorization findById(int id);
}
