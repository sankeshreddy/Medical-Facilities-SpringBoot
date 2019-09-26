package trg.talentsprint.starterkit.repository;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Facility;
import trg.talentsprint.starterkit.model.FacilityFavourite;

public interface FacilityFavouriteRepository extends CrudRepository<FacilityFavourite, Integer> {

	FacilityFavourite findByFid(Facility d);
}
