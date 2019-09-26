package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Category;
import trg.talentsprint.starterkit.repository.CategoryRepository;

@Service
@Transactional
public class CategoryService {

	@Autowired
	CategoryRepository categoryrepo;
	
	public List<Category> categoryType() {
		
		List<Category> categorylist = new ArrayList<Category>();
		
		for (Category c2 : categoryrepo.findAll()) {
			categorylist.add(c2);
		}
		return categorylist;
		
	}
	
	public Category findById(int id) {
		
		return categoryrepo.findById(id).get();
	}
	
	public Category findByCategoryName(String cat) {
		
		return categoryrepo.findByCategoryname(cat);
	}
	
}
