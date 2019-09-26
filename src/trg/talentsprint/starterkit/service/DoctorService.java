package trg.talentsprint.starterkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.repository.DoctorsRepository;

@Service
@Transactional
public class DoctorService {

	@Autowired
	DoctorsRepository doctorsRepository;
	
	public List<Doctor> findBySubcategoryidAndLocalityid(int subcategoryid, int localityid) {
		
		return doctorsRepository.findBySubcategoryidAndLocalityid(subcategoryid, localityid);
	}
	
	public Doctor findByDid(int id1) {
		
		return doctorsRepository.findById(id1).get();
	}
}
