package trg.talentsprint.starterkit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import trg.talentsprint.starterkit.model.SubCategory;

@Repository
public interface SubcategoryRepository extends CrudRepository<SubCategory, Integer> {
	
	public List<SubCategory> findBycategoryid(int categoryid);

}
