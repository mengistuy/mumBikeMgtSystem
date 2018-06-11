package mum.edu.cs425.mumBikeMgtSystem.dao;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.cs425.mumBikeMgtSystem.model.Bicycle;
@Repository
public interface BicycleRepository extends CrudRepository<Bicycle,Long> {

}
