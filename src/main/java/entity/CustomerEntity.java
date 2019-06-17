package entity;

import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name="customer")
public class CustomerEntity {
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private String customerId;
    private String customerName;
    private String gender;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birthday;
    private String cmnd;
    private String address;
    private String email;
    private String phone;
    private String createrName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate createDate;
    
    @OneToMany(mappedBy = "customer",fetch = FetchType.EAGER)
    private List<AccountEntity> listAccount;

    public CustomerEntity() {
    }

    public CustomerEntity(String customerId, String customerName, String gender, LocalDate birthday, String cmnd, String address, String email, String phone, String createrName, LocalDate createDate, List<AccountEntity> listAccount) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.gender = gender;
        this.birthday = birthday;
        this.cmnd = cmnd;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.createrName = createrName;
        this.createDate = createDate;
        this.listAccount = listAccount;
    }

    public CustomerEntity(String customerId, String customerName, String gender, LocalDate birthday, String cmnd, String address, String email, String phone, String createrName, LocalDate createDate) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.gender = gender;
        this.birthday = birthday;
        this.cmnd = cmnd;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.createrName = createrName;
        this.createDate = createDate;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCreaterName() {
        return createrName;
    }

    public void setCreaterName(String createrName) {
        this.createrName = createrName;
    }

    public LocalDate getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }

    public List<AccountEntity> getListAccount() {
        return listAccount;
    }

    public void setListAccount(List<AccountEntity> listAccount) {
        this.listAccount = listAccount;
    }

    


}
