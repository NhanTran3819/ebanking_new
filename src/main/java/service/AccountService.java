package service;

import entity.AccountEntity;
import entity.CustomerEntity;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import repository.CustomerRepository;
import repository.AccountRepository;
import repository.TransactionLogRepository;


@Service
public class AccountService {
        @Autowired
    private AccountRepository accountRepo;
        
    public String getNewAccount(){
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        int last=accountList.size()-1;
        String lastAccId=accountList.get(last).getAccountNo();
        String sub=lastAccId.substring(3,11);
        int id=Integer.parseInt(sub)+1;
        String newAccId="001"+id;
        return newAccId;
    }
    public void deposit(AccountEntity acc,double amount){
        double balance=acc.getBalance()+amount;
        acc.setBalance(balance);
        accountRepo.save(acc);
    }
   
    public void withDraw(AccountEntity acc, double amount){
            double balance=acc.getBalance()-amount;
            acc.setBalance(balance);
            accountRepo.save(acc);
    }
    
    public void transferMoney(AccountEntity acc1,AccountEntity acc2, double amount){
        withDraw(acc1,amount);
        deposit(acc2,amount);
    }
    
    public String random(){
        int intNumber = 0;
        String otp;
        while (intNumber >= 999999 || intNumber <= 100000) {
            Random rd = new Random();
            intNumber = rd.nextInt();
        }
        otp=""+intNumber;
        return otp;
    }
    
    public AccountEntity getAccount(String accountId){
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        AccountEntity account=null;
        for(AccountEntity acc:accountList){
                 if(acc.getAccountNo().equals(accountId)){
                     account=acc;
                 }
        }
        return account;
    }
}
