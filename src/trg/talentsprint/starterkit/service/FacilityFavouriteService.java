package trg.talentsprint.starterkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Facility;
import trg.talentsprint.starterkit.model.FacilityFavourite;
import trg.talentsprint.starterkit.repository.FacilityFavouriteRepository;

@Service
@Transactional
public class FacilityFavouriteService {

	@Autowired
	FacilityFavouriteRepository myFavRepo;
	
	public FacilityFavourite findByFid(Facility d) {
		// TODO Auto-generated method stub
		return myFavRepo.findByFid(d);
	}

	public void save(FacilityFavourite myFav) {
		// TODO Auto-generated method stub
		myFavRepo.save(myFav);
	}

	public List<FacilityFavourite> findall() {
		// TODO Auto-generated method stub
		return (List<FacilityFavourite>) myFavRepo.findAll();
	}
}
