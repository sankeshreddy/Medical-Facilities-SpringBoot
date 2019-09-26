package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import trg.talentsprint.starterkit.model.AdPost;
@Repository
public interface AdPostRepository extends CrudRepository<AdPost, Integer>{
	
	
	List<AdPost> findByUserid(Long id);
	
	

}
