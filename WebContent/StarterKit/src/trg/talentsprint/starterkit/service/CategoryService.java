package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Category;
import trg.talentsprint.starterkit.model.City;
import trg.talentsprint.starterkit.repository.CategoryRepository;

@Service
@Transactional

public class CategoryService {

	@Autowired
	CategoryRepository categoryRepo;

	public List<Category> categoryType() {
		List<Category> categorylist = new ArrayList<Category>();
		for (Category c2 : categoryRepo.findAll()) {
			categorylist.add(c2);
		}

		return categorylist;
	}

	public Category findById(int id) {
		return categoryRepo.findById(id).get();
	}

}
