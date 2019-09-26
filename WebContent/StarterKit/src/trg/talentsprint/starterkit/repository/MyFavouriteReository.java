package trg.talentsprint.starterkit.repository;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.MyFavourite;
import trg.talentsprint.starterkit.model.Doctor;

public interface MyFavouriteReository extends CrudRepository<MyFavourite,Integer> {

	MyFavourite findByDid(Doctor d);




}
