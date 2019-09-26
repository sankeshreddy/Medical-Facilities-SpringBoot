package trg.talentsprint.starterkit.repository;

import org.springframework.data.repository.CrudRepository;

import trg.talentsprint.starterkit.model.Category;

public interface CategoryRepository extends CrudRepository<Category, Integer> {
}
