package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import trg.talentsprint.starterkit.model.Locality;
import trg.talentsprint.starterkit.model.AdPost;
import trg.talentsprint.starterkit.repository.AdPostRepository;

@Service
public class AdPostService {

	@Autowired
	AdPostRepository AdpostRepository;
	
	public void save(AdPost adpost) {
		
		AdpostRepository.save(adpost);
	}
	
	public List<AdPost> findList(){
		
		List<AdPost> postlist = new ArrayList<>();
		
		for (AdPost list : AdpostRepository.findAll()) {
			postlist.add(list);
		}
		
		return postlist;
	}
	
	public void deletePost(int id) {
		
		AdpostRepository.deleteById(id);
	}
	
	public AdPost updateMyPost(int id) {
		
		return AdpostRepository.findById(id).get();
	}
	
	public List<AdPost> findByUser(Long id){
		
		return AdpostRepository.findByUserid(id);
	}
}
