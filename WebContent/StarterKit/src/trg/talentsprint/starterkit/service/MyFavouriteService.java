package trg.talentsprint.starterkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import trg.talentsprint.starterkit.model.MyFavourite;
import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.repository.MyFavouriteReository;

@Service
@Transactional
public class MyFavouriteService {
	@Autowired
	MyFavouriteReository myFavRepo;

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
}
