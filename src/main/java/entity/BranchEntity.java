package entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name="branch")
public class BranchEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String address;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="bankId")
    private ExtBankEntity extBank;

    public BranchEntity() {
    }

    public BranchEntity(int id, String address, ExtBankEntity extBank) {
        this.id = id;
        this.address = address;
        this.extBank = extBank;
    }

    public BranchEntity(String address, ExtBankEntity extBank) {
        this.address = address;
        this.extBank = extBank;
    }

    public BranchEntity(int id, String address) {
        this.id = id;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public ExtBankEntity getExtBank() {
        return extBank;
    }

    public void setExtBank(ExtBankEntity extBank) {
        this.extBank = extBank;
    }
}
