package trg.talentsprint.starterkit.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trg.talentsprint.starterkit.model.Facility;
import trg.talentsprint.starterkit.repository.FacilityRepository;

@Service
@Transactional
public class FacilityService {
	@Autowired
	FacilityRepository facilityRepository;

	public List<Facility> findBySubcategoryidAndLocalityid(int subcategoryid, int localityid) {
		return facilityRepository.findBySubcategoryidAndLocalityid(subcategoryid, localityid);
	}
	
	public Facility findByDid(int id1) {
		// TODO Auto-generated method stub
		return facilityRepository.findById(id1).get();
	}
}
