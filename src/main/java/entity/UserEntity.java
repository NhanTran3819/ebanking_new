/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name="user")
public class UserEntity {
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private String username;
    private String password;
    private int enable; 
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="roleId")
    private RoleEntity role;

    public UserEntity() {
    }

    public UserEntity(String username, String password, int enable, RoleEntity role) {
        this.username = username;
        this.password = password;
        this.enable = enable;
        this.role = role;
    }

    public UserEntity(String username, String password, int enable) {
        this.username = username;
        this.password = password;
        this.enable = enable;
    }

    public UserEntity(String username, String password) {
        this.username = username;
        this.password = password;
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
