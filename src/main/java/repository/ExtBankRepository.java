package repository;

import entity.ExtBankEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ExtBankRepository extends CrudRepository<ExtBankEntity, Integer>{
    
    
}
