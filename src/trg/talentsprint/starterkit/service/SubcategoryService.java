package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.SubCategory;
import trg.talentsprint.starterkit.repository.SubcategoryRepository;

@Service
@Transactional
public class SubcategoryService {
	@Autowired
	SubcategoryRepository subcategoryrepo;
	
	public List<SubCategory> subcategorylist(int categoryid) {
		List<SubCategory> subcategorylist = new ArrayList<>();
		for (SubCategory list : subcategoryrepo.findBycategoryid(categoryid)) {
			subcategorylist.add(list);
		}
		return subcategorylist;
	}


	
}
