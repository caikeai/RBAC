package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Authorization;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

/**
 * 权限表持久层操作接口
 */
public interface AuthorizationDaoInterface {

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

    /**
     * 根据角色 id 查询对应菜单权限
     * @param roleId
     * @return
     */
    @Select("select * from authorization where role_id = #{roleId}")
    @Results({
            @Result(
                    property = "menu",
                    column = "menu_id",
                    one = @One(select = "com.henleo.rbac.dao.MenuDaoInterface.findById", fetchType = FetchType.EAGER)
            ),

            @Result(
                    property = "role",
                    column = "role_id",
                    one = @One(select = "com.henleo.rbac.dao.RoleDaoInterface.findById", fetchType = FetchType.EAGER)
            )
    })
    List<Authorization> findByRoleId(@Param("roleId") int roleId);


    /**
     * 根据角色 ID 删除指定的权限
     * @param roleid
     */
    @Delete("delete from authorization where role_id = #{roleid}")
    void delByRoleId(@Param("roleid") int roleid);

    /**
     * 根据两个直接插入数据
     * @param roleid
     * @param menuid
     */
    @Insert("insert into authorization(role_id, menu_id) values(#{roleid},#{menuid})")
    void addAu(@Param("roleid") int roleid, @Param("menuid") int menuid);
}
