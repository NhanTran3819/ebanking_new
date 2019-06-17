package controller;

import entity.AccountEntity;
import entity.CustomerEntity;
import entity.ExtBankEntity;
import entity.RoleEntity;
import entity.TransactionLogEntity;
import entity.UserEntity;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.WebApplicationContext;
import repository.AccountRepository;
import repository.BranchRepository;
import repository.CustomerRepository;
import repository.ExtBankRepository;
import repository.RoleRepository;
import repository.TransactionLogRepository;
import repository.UserRepository;
import service.AccountService;
import util.SentMail;



@Controller

@RequestMapping(value="/")
public class EbankController {
    @Autowired
    AccountService accountService;     
    @Autowired
    private AccountRepository accountRepo;
    @Autowired
    private CustomerRepository customerRepo;
    @Autowired
    private TransactionLogRepository transactionLogRepo;
    @Autowired
    private ExtBankRepository extBankRepo;
    @Autowired
    private BranchRepository branchRepo;
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private RoleRepository roleRepo;
            
    
    @RequestMapping(method=GET)
    public String homePage(Model model){
       return "home";
    }
    
    @RequestMapping(value="/loginSecurity",method=GET)
    public String loginSecurity(Model model){
        return "login";
    }
    
    @RequestMapping(value="/admin",method=GET)
    public String admin(Model model){
        return "/admin/admin";
    }
    
    @RequestMapping(value="/createUser",method=GET)
    public String toCreateUser(Model model){
        model.addAttribute("action", "create");
        return "admin/createUser";
    }
    
    @RequestMapping(value="/create",method=POST)
    public String createUser(Model model,@RequestParam("userName") String userName,
            @RequestParam("pass1") String pass1,@RequestParam("pass2") String pass2){
        String msg="";
        String url="admin/createUser";
         List<UserEntity> userList=(List<UserEntity>) userRepo.findAll();
         if(pass1.equals(pass2)){
         for(UserEntity user:userList){
             if(!user.getUserName().equals(userName)){
                RoleEntity role=(RoleEntity) roleRepo.findOne(2);
                UserEntity newUser = new UserEntity(userName,pass1,1,role);
                userRepo.save(newUser);
                url="admin/admin";
             }
         }
         }else{
             msg="Repassword not mapping password";
             model.addAttribute("msg", msg);
             
         }
        return url;
    }
    
    @RequestMapping(value="/user",method=GET)
    public String user(Model model){
        return "/user/user";
    }

//    @RequestMapping(value="/manager",method=GET)
//    public String maneger(Model model){
//        return "admin/manager";
//    }
    @RequestMapping(value="/managerUser",method=GET)
    public String toManegerUser(Model model){
        List<UserEntity> userList=(List<UserEntity>) userRepo.findAll();
        model.addAttribute("userList", userList);
        return "admin/managerUser";
    }
    @RequestMapping(value="/managerAccount",method=GET)
    public String toManegerAccount(Model model){
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        model.addAttribute("accountList", accountList);
        return "user/managerAccount";
    }
    
    @RequestMapping(value="/newAccount",method=GET)
    public String newAccount(Model model){
        model.addAttribute("account", new AccountEntity());
        model.addAttribute("msg","Add new Account");
        model.addAttribute("type", "add");
        model.addAttribute("action", "checkRegister");
        return "Register";
    }
    
    @RequestMapping(value="/checkRegister",method=POST)
    public String active(Model model,@RequestParam("id") String id,
                @RequestParam("email") String email,@RequestParam("pass1") String pass1,
                @RequestParam("pass2") String pass2){
        String msgBody="Go to ebanking to activation "+" "+
                "http://localhost:8084/WebEbanking_1/active";
        String subject="Activation account ebanking";
        String url="";
        String msgpass="";
        //int enable=0;
        if(pass1.equals(pass2)){
            List<CustomerEntity> customerList=(List<CustomerEntity>) customerRepo.findAll();
            for(CustomerEntity cus:customerList){
                if(cus.getCustomerId().equals(id)&&cus.getEmail().equals(email)){
                   String newAcc=accountService.getNewAccount();
                   AccountEntity newAccount= new AccountEntity();
                   newAccount.setAccountNo(newAcc);
                   newAccount.setAccountType("transaction");
                   newAccount.setBalance(0.0);
                   newAccount.setInterest(0.0);
                   newAccount.setPassword(pass1);
                   newAccount.setCreateDate(LocalDate.now());
                   newAccount.setEnable(0);
                   newAccount.setCustomer(cus);
                   accountRepo.save(newAccount);
                   msgBody=msgBody+"?enable=1&accId="+newAcc+"\n"+"Account: "+newAcc+"\n"+"password: "+pass1;
                   SentMail.send(email, subject, msgBody);
                   url="home";
            }
              }
        }else{
            url="Register";
            msgpass="";
        }
        return url;
    }
        
    @RequestMapping(value="/active",method=GET)
    public String deleteProduct(@RequestParam(name="enable") int enable,@RequestParam(name="accId") String accId){
        String url="";
        if(enable!=0){
            List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
            for(AccountEntity acc:accountList){
                if(acc.getAccountNo().equals(accId)){
                    acc.setEnable(1);
                    accountRepo.save(acc);
                    url="active";
                }
            }
        }else{
            String msg="active error";
            url = "Register";
        }
        return url;
    }
    
    @RequestMapping(value="/logout",method=GET)
    public String logout(Model model){
        return "login";
    }
    @RequestMapping(value="/login",method=GET)
    public String preLogin(Model model){
        model.addAttribute("account", new AccountEntity());
        model.addAttribute("msg","Login");
        model.addAttribute("type", "login");
        model.addAttribute("action", "checkLogin");
        return "Login1";
    }

    @RequestMapping(value="/checkLogin",method=POST)
    public String login(@RequestParam("id") String id,@RequestParam("pass") String pass,
                Model model,HttpServletRequest request){
        String url="Login1";
        String msg="login fail";
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        for(AccountEntity acc:accountList){
            if(acc.getAccountNo().equals(id)&&acc.getPassword().equals(pass)&&acc.getEnable()==1){
                url="Welcome";
                msg="login Success";
                HttpSession session=request.getSession();
                session.setAttribute("acc", acc);
            }
        }
        model.addAttribute("msg",msg);
        return url;
    }
        
    @RequestMapping(value="/thongtinkhachhang",method=GET)
    public String inforCustomer(Model model,HttpServletRequest request){
        HttpSession session=request.getSession();
        AccountEntity acc=(AccountEntity) session.getAttribute("acc");
        model.addAttribute("acc", acc);
        return "thongtinkhachhang";
    }
        
    @RequestMapping(value="/thongtintaikhoan",method=GET)
    public String inforAccount(Model model,HttpServletRequest request){
        HttpSession session=request.getSession();
        AccountEntity acc=(AccountEntity) session.getAttribute("acc");
        model.addAttribute("acc", acc);
        return "thongtintaikhoan";
    }
        
        @RequestMapping(value="/sodu",method=GET)
        public String Balance(Model model,HttpServletRequest request){
        HttpSession session=request.getSession();
        AccountEntity acc=(AccountEntity) session.getAttribute("acc");
        model.addAttribute("acc", acc);
        return "sodu";
    }
        
    @RequestMapping(value="/tranferMoney",method=GET)
    public String tranferMoney(Model model){
        return "chuyentien";
    }
        
    @RequestMapping(value="/noibo",method=GET)
    public String internal(Model model,HttpServletRequest request){
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        model.addAttribute("action", "informInternal");
        request.setAttribute("accountList", accountList);
        return "noibo";
    }
        
    @RequestMapping(value="/getName",method=GET)
    public String getAccountName(Model model,@RequestParam("toAccount") String toAccount){
        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
        for(AccountEntity acc:accountList){
            if(toAccount!=null&&acc.getAccountNo().equals(toAccount)){
                model.addAttribute("account", acc);
                model.addAttribute("action", "informInternal");
            }
        }
        return "noibo";
    }
        
    @RequestMapping(value="/informInternal",method=POST)
    public String informInternal(Model model,@RequestParam("toAccount") String toAccount,
                @RequestParam("accName") String accName,@RequestParam("amount") String amount,
                @RequestParam("content") String content,HttpServletRequest request){
            model.addAttribute("action", "tranferInternal");
            model.addAttribute("toAccount", toAccount);
            model.addAttribute("accName", accName);
            model.addAttribute("amount", amount);
            model.addAttribute("content", content);
            HttpSession session=request.getSession();
            AccountEntity acc=(AccountEntity) session.getAttribute("acc");            
            String otp=accountService.random();
            String email=acc.getCustomer().getEmail();
            String subject="Code OTP";
            String msgBody="Code OTP: "+otp;
            SentMail.send(email, subject, msgBody);
            session.setAttribute("otp", otp);
        return "informInternal";
    }
        
    @RequestMapping(value="/tranferInternal",method=POST)
    public String tranferInternal(Model model,@RequestParam("toAccount") String toAccount,
                @RequestParam("accName") String accName,@RequestParam("content") String content,
                @RequestParam("otp") String otp,HttpServletRequest request){
            String url="";            
            int amount=Integer.parseInt(request.getParameter("amount"));
            List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
            for(AccountEntity acc:accountList){
                 if(acc.getAccountNo().equals(toAccount)&&acc.getCustomer().getCustomerName().equals(accName)) {
                     HttpSession session=request.getSession();
                     AccountEntity fromAccount=(AccountEntity) session.getAttribute("acc");
                     String codeOTP=(String) session.getAttribute("otp");
                     String id=fromAccount.getAccountNo();
                     if(otp.equals(codeOTP)){
                        if(amount<=fromAccount.getBalance()){
                            accountService.transferMoney(fromAccount, acc, amount);
                            AccountEntity newAcc=accountService.getAccount(id);
                            TransactionLogEntity log= new TransactionLogEntity("Tranfer money Internal",amount,toAccount,accName,null,null,0.0,content,LocalDate.now(),newAcc);
                            transactionLogRepo.save(log);
                            session.setAttribute("acc",newAcc);
                            url="tranferInternalSuccess";
                        }else{
                            String msg="Amount more than balance. Please enter again amount!";
                            model.addAttribute("msg",msg);
                            url="noibo";
                        }
                     }else{
                         String msg="Code otp not true!";
                         model.addAttribute("msg",msg);
                         url="noibo";
                     }
                 }   
                }
            return url;
    }
        
    @RequestMapping(value="/ngoai",method=GET)
    public String external(Model model){
            List<ExtBankEntity> extBankList=(List<ExtBankEntity>) extBankRepo.findAll();
            model.addAttribute("extBank", extBankList);
            model.addAttribute("action", "informExternal");
            return "ngoai";
    }
        
    @RequestMapping(value="/getBranch",method=GET)
    public String getBranch(Model model,@RequestParam("bankName") String bankName){
        List<ExtBankEntity> extBankList=(List<ExtBankEntity>) extBankRepo.findAll();
        for(ExtBankEntity extBank:extBankList){
            if(bankName!=null&&extBank.getBankName().equals(bankName)){
                model.addAttribute("extBank", extBank);
                model.addAttribute("action", "informExternal");
            }
        }
        return "ngoai";
    }
//    @RequestMapping(value = "/withDraw",method = POST)
//    public String withDraw(Model model,@RequestParam("account") String account,HttpServletRequest request){
//        String url=""; 
//        int amount=Integer.parseInt(request.getParameter("amount"));
//        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
//        HttpSession session=request.getSession();
//        AccountEntity account1=(AccountEntity) session.getAttribute("acc");
//    }
    
    @RequestMapping(value="/lietkegiaodich",method=GET)
    public String transactionLog(Model model,HttpServletRequest request){
        HttpSession session=request.getSession();
        AccountEntity acc=(AccountEntity) session.getAttribute("acc");
        List<TransactionLogEntity> logList=acc.getListTransactionLog();
        model.addAttribute("logList", logList);
        return "lietkegiaodich";
    }
        
    @RequestMapping(value="/view",method=GET)
    public String viewDetailLog(Model model,@RequestParam(name="id") int id){
        List<TransactionLogEntity> logList=(List<TransactionLogEntity>) transactionLogRepo.findAll();
        TransactionLogEntity log=logList.get(id-1);
        model.addAttribute("log", log);
        return "view";
    }
        
    
    @RequestMapping(value="/doipassword",method=GET)
    public String preChangePass(Model model){
        model.addAttribute("action", "changePass");
        return "doipassword";
    }
        
        
    @RequestMapping(value="/changePass",method=POST)
    public String changePass(Model model,@RequestParam("oldPass") String oldPass,HttpServletRequest request,
                @RequestParam("newPass1") String newPass1,@RequestParam("newPass2") String newPass2){
        HttpSession session=request.getSession();
        AccountEntity acc=(AccountEntity) session.getAttribute("acc");
        if(acc.getPassword().equals(oldPass)&&newPass1.equals(newPass2)){
            acc.setPassword(newPass1);
            accountRepo.save(acc);
            session.setAttribute("acc", acc);
        }
        return "Welcome_1";
    }
//    @RequestMapping(value = "/deposit", method = POST)
//    public String deposit(Model model,@RequestParam(name="id") int id){
//        List<AccountEntity> accountList=(List<AccountEntity>) accountRepo.findAll();
//        
//    }
}
