package trg.talentsprint.starterkit.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.model.MyFavourite;
import trg.talentsprint.starterkit.repository.MyFavouriteRepository;

@Service
@Transactional
public class MyFavouriteService {
	
	@Autowired
	MyFavouriteRepository myFavRepo;

	public void save(MyFavourite myFav) {
		// TODO Auto-generated method stub
		myFavRepo.save(myFav);
	}

	public List<MyFavourite> findall() {
		// TODO Auto-generated method stub
		return (List<MyFavourite>) myFavRepo.findAll();
	}

	public MyFavourite findByDid(Doctor d) {
		// TODO Auto-generated method stub
		return myFavRepo.findByDid(d);
	}

	public void deletePost(int id) {
		// TODO Auto-generated method stub
		myFavRepo.deleteById(id);

	}

	public List<MyFavourite> findList() {
		List<MyFavourite> favlist = new ArrayList<>();
		for (MyFavourite list : myFavRepo.findAll()) {
			favlist.add(list);
		}
		return favlist;

	}
}
