package trg.talentsprint.starterkit.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import trg.talentsprint.starterkit.model.AdPost;

@Repository
public interface AdPostRepository extends CrudRepository<AdPost, Integer> {

}
