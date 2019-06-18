package repository;

import entity.AccountEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AccountRepository extends CrudRepository<AccountEntity, Integer>{
        @Query("select a from AccountEntity  a where a.accountNo like ?1 or a.customer.customerName like ?2 ")
       List<AccountEntity> searchByAccountNoOrCustomerName(String accountNo,String name);
    
}
