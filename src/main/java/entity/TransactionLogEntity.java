package entity;

import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name="transactionLog")
public class TransactionLogEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int transactionId;
    private String transactionType;
    private double amount;
    private String accDestintionId;
    private String accDestintionName;
    private String bankNameDestination;
    private String branch;    
    private double fee;
    private String description;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate createDate;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="accountNo")
    private AccountEntity account;

    public TransactionLogEntity() {
    }

    public TransactionLogEntity(String transactionType, double amount, String accDestintionId, String accDestintionName, String bankNameDestination, String branch, double fee, String description, LocalDate createDate) {
        this.transactionType = transactionType;
        this.amount = amount;
        this.accDestintionId = accDestintionId;
        this.accDestintionName = accDestintionName;
        this.bankNameDestination = bankNameDestination;
        this.branch = branch;
        this.fee = fee;
        this.description = description;
        this.createDate = createDate;
    }

    
    public TransactionLogEntity(int transactionId, String transactionType, double amount, String accDestintionId, String accDestintionName, String bankNameDestination, String branch, double fee, String description, LocalDate createDate, AccountEntity account) {
        this.transactionId = transactionId;
        this.transactionType = transactionType;
        this.amount = amount;
        this.accDestintionId = accDestintionId;
        this.accDestintionName = accDestintionName;
        this.bankNameDestination = bankNameDestination;
        this.branch = branch;
        this.fee = fee;
        this.description = description;
        this.createDate = createDate;
        this.account = account;
    }

    public TransactionLogEntity(int transactionId, String transactionType, double amount, String accDestintionId, String accDestintionName, String bankNameDestination, String branch, double fee, String description, LocalDate createDate) {
        this.transactionId = transactionId;
        this.transactionType = transactionType;
        this.amount = amount;
        this.accDestintionId = accDestintionId;
        this.accDestintionName = accDestintionName;
        this.bankNameDestination = bankNameDestination;
        this.branch = branch;
        this.fee = fee;
        this.description = description;
        this.createDate = createDate;
    }

    public TransactionLogEntity(String transactionType, double amount, String accDestintionId, String accDestintionName, String bankNameDestination, String branch, double fee, String description, LocalDate createDate, AccountEntity account) {
        this.transactionType = transactionType;
        this.amount = amount;
        this.accDestintionId = accDestintionId;
        this.accDestintionName = accDestintionName;
        this.bankNameDestination = bankNameDestination;
        this.branch = branch;
        this.fee = fee;
        this.description = description;
        this.createDate = createDate;
        this.account = account;
    }

    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(String transactionType) {
        this.transactionType = transactionType;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getAccDestintionId() {
        return accDestintionId;
    }

    public void setAccDestintionId(String accDestintionId) {
        this.accDestintionId = accDestintionId;
    }

    public String getAccDestintionName() {
        return accDestintionName;
    }

    public void setAccDestintionName(String accDestintionName) {
        this.accDestintionName = accDestintionName;
    }

    public String getBankNameDestination() {
        return bankNameDestination;
    }

    public void setBankNameDestination(String bankNameDestination) {
        this.bankNameDestination = bankNameDestination;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }

    public AccountEntity getAccount() {
        return account;
    }

    public void setAccount(AccountEntity account) {
        this.account = account;
    }

    
}
