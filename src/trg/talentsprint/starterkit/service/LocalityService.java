package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Locality;
import trg.talentsprint.starterkit.repository.LocalityRepository;

@Service
@Transactional
public class LocalityService {

	@Autowired
	LocalityRepository localityrepo;
	
	public List<Locality> localitylist(int cityid) {
		List<Locality> loclist = new ArrayList<>();
		for (Locality list : localityrepo.findBycityid(cityid)) {
			loclist.add(list);
		}
		return loclist;
	}
}
