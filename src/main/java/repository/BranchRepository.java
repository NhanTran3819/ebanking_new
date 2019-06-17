package repository;

import entity.BranchEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface BranchRepository extends CrudRepository<BranchEntity, Integer>{
    
    
}
