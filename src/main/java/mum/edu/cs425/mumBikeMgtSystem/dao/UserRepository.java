package mum.edu.cs425.mumBikeMgtSystem.dao;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.cs425.mumBikeMgtSystem.model.User;
@Repository
public interface UserRepository extends CrudRepository<User,Long> {

}
