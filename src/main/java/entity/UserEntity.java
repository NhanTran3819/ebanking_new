
package entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="user")
public class UserEntity {
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private String userName;
    private String password;
    private int enable; 
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="roleId")
    private RoleEntity role;

    public UserEntity() {
    }

    public UserEntity(String userName, String password, int enable, RoleEntity role) {
        this.userName = userName;
        this.password = password;
        this.enable = enable;
        this.role = role;
    }

    public UserEntity(String userName, String password, int enable) {
        this.userName = userName;
        this.password = password;
        this.enable = enable;
    }

    public UserEntity(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    public RoleEntity getRole() {
        return role;
    }

    public void setRole(RoleEntity role) {
        this.role = role;
    }
    
}
