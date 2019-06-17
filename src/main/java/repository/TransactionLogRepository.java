package repository;

import entity.TransactionLogEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TransactionLogRepository extends CrudRepository<TransactionLogEntity, Integer>{

}
