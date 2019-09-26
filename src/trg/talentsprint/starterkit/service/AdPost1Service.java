package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trg.talentsprint.starterkit.model.AdPost1;
import trg.talentsprint.starterkit.repository.AdPost1Repository;

@Service
public class AdPost1Service {

	@Autowired
	AdPost1Repository Adpost1Repository;
	
	public void save(AdPost1 adpost) {
		Adpost1Repository.save(adpost);
	}

	public List<AdPost1> findList() {
		List<AdPost1> postlist = new ArrayList<>();
		for (AdPost1 list : Adpost1Repository.findAll()) {
			postlist.add(list);
		}
		return postlist;

	}

	public void deletePost(int id) {
		Adpost1Repository.deleteById(id);
	}

	public AdPost1 updateMyPost(int id) {
		return Adpost1Repository.findById(id).get();
	}
	
}
