package entity;

import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author ADMIN
 */
//@Component
//@Scope("session")
@Entity
@Table(name="account")
public class AccountEntity {
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private String accountNo;
    private String accountType;
    private String password;
    private double balance;
    private double interest;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate createDate;
    private int enable;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="customerId")
    private CustomerEntity customer;

    @OneToMany(mappedBy = "account", fetch = FetchType.EAGER)
    private List<TransactionLogEntity> listTransactionLog;

    public AccountEntity() {
    }

    public AccountEntity(String accountNo, String accountType, String password, double balance, double interest, LocalDate createDate, int enable, CustomerEntity customer, List<TransactionLogEntity> listTransactionLog) {
        this.accountNo = accountNo;
        this.accountType = accountType;
        this.password = password;
        this.balance = balance;
        this.interest = interest;
        this.createDate = createDate;
        this.enable = enable;
        this.customer = customer;
        this.listTransactionLog = listTransactionLog;
    }

    public AccountEntity(String accountNo, String accountType, String password, double balance, double interest, LocalDate createDate, int enable) {
        this.accountNo = accountNo;
        this.accountType = accountType;
        this.password = password;
        this.balance = balance;
        this.interest = interest;
        this.createDate = createDate;
        this.enable = enable;
    }

    public AccountEntity(String accountNo, String accountType, String password, double balance, double interest, LocalDate createDate, int enable, CustomerEntity customer) {
        this.accountNo = accountNo;
        this.accountType = accountType;
        this.password = password;
        this.balance = balance;
        this.interest = interest;
        this.createDate = createDate;
        this.enable = enable;
        this.customer = customer;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getInterest() {
        return interest;
    }

    public void setInterest(double interest) {
        this.interest = interest;
    }

    public LocalDate getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }

    public CustomerEntity getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerEntity customer) {
        this.customer = customer;
    }

    public List<TransactionLogEntity> getListTransactionLog() {
        return listTransactionLog;
    }

    public void setListTransactionLog(List<TransactionLogEntity> listTransactionLog) {
        this.listTransactionLog = listTransactionLog;
    }

  
    
    
    
}
