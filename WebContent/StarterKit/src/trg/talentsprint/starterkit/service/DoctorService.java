package trg.talentsprint.starterkit.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		// TODO Auto-generated method stub
		return doctorsRepository.findById(id1).get();
	}
}
