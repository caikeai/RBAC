package com.henleo.rbac.dao;

import com.henleo.rbac.domian.Role;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 角色表持久层操作接口
 */
public interface RoleDaoInterface {
    /**
     * 增加角色
     * @param role
     */
    @Insert("insert into role(role_name) values(#{role_name})")
    public void add(Role role);

    /**
     * 根据 id 删除角色
     * @param id
     */
    @Delete("delete from role where role_id = #{id}")
    public void delete(int id);

    /**
     * 修改角色
     * @param role
     */
    @Update("update role set role_name = #{role_name} where role_id = #{role_id}")
    public void update(Role role);

    /**
     * 查询所有角色
     * @return 角色集合
     */
    @Select("select * from role")
    public List<Role> findAll();

    /**
     * 根据 id 查询指定的角色
     * @param id
     * @return 指定角色
     */
    @Select("select * from role where role_id = #{id}")
    public Role findById(int id);
}
