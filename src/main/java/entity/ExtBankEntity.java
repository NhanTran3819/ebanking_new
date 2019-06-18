/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name="extBank")
public class ExtBankEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bankId;
    private String bankName;
    
    @OneToMany(mappedBy = "extBank", fetch = FetchType.EAGER)
    private List<BranchEntity> listBranch;

    public ExtBankEntity() {
    }

    public ExtBankEntity(int bankId, String bankName, List<BranchEntity> listBranch) {
        this.bankId = bankId;
        this.bankName = bankName;
        this.listBranch = listBranch;
    }

    public ExtBankEntity(int bankId, String bankName) {
        this.bankId = bankId;
        this.bankName = bankName;
    }

    public ExtBankEntity(String bankName, List<BranchEntity> listBranch) {
        this.bankName = bankName;
        this.listBranch = listBranch;
    }

    public int getBankId() {
        return bankId;
    }

    public void setBankId(int bankId) {
        this.bankId = bankId;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public List<BranchEntity> getListBranch() {
        return listBranch;
    }

    public void setListBranch(List<BranchEntity> listBranch) {
        this.listBranch = listBranch;
    }
    
    
}
