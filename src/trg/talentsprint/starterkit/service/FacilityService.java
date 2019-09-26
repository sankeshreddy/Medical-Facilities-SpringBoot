package trg.talentsprint.starterkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Facility;
import trg.talentsprint.starterkit.repository.FacilityRepository;

@Service
@Transactional
public class FacilityService {

	@Autowired
	FacilityRepository facilityRepository;
	
	public List<Facility> findBySubcategoryidAndLocalityid(int subcategoryid, int localityid){
		
		return facilityRepository.findBySubcategoryidAndLocalityid(subcategoryid, localityid);
	}
	
	public Facility findByDid(int id1) {
		
		return facilityRepository.findById(id1).get();
	}
	
}
