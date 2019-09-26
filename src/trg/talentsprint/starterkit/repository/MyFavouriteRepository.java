package trg.talentsprint.starterkit.repository;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.model.MyFavourite;

public interface MyFavouriteRepository extends CrudRepository<MyFavourite, Integer>{
	
	MyFavourite findByDid(Doctor d);

}
