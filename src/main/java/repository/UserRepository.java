
package repository;

import entity.UserEntity;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRepository extends CrudRepository<UserEntity, Integer>{
    @Query("select a from UserEntity  a where a.username like ?1 or a.role.roleName like ?2 ")
       List<UserEntity> searchByUserOrRole(String user,String role);
}
