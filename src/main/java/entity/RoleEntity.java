package entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="role")
public class RoleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int roleId;
    private String roleName;
    
    @OneToMany(mappedBy = "role",fetch = FetchType.EAGER)
    private List<UserEntity> listUser;

    public RoleEntity() {
    }

    public RoleEntity(int roleId, String roleName, List<UserEntity> listUser) {
        this.roleId = roleId;
        this.roleName = roleName;
        this.listUser = listUser;
    }

    public RoleEntity(int roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public RoleEntity(String roleName, List<UserEntity> listUser) {
        this.roleName = roleName;
        this.listUser = listUser;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public List<UserEntity> getListUser() {
        return listUser;
    }

    public void setListUser(List<UserEntity> listUser) {
        this.listUser = listUser;
    }
    
    
}
