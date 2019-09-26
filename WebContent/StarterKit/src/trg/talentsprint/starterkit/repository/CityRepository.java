package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Category;
import trg.talentsprint.starterkit.model.City;

public interface CityRepository extends CrudRepository<City, Integer> {
	//public List<City> findByCityname(String cityname);
	
}
