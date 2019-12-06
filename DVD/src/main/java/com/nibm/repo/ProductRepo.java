package com.nibm.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.nibm.model.Product;

public interface ProductRepo extends JpaRepository<Product, Integer> {
	
	@Query("FROM Product WHERE UPPER(name) LIKE %?#{[0].toUpperCase()}% ")
	//@Query(value = "SELECT * FROM Product WHERE name LIKE %:search_txt% OR WHERE descr LIKE  %:search_txt%", nativeQuery=true)
			
	List<Product> findByName(String search_txt);
	
	@Query(value = "SELECT * FROM Product WHERE name LIKE %:search_txt%  AND category LIKE %:genre%", nativeQuery=true)
	List<Product> findByNameGenre(@Param("search_txt") String search_txt, @Param("genre") String genre);
	
	@Query("FROM Product WHERE UPPER(category) LIKE %?#{[0].toUpperCase()}%")
	List<Product> findByGenre(String genre);
	
	@Query("FROM Product WHERE prod_id = ?#{[0]}")
	Product myFindById(int prod_id);
	
	@Query(value="SELECT cart.qty, product.prod_id, product.name FROM product INNER JOIN cart ON cart.prod_id = product.prod_id WHERE cart.uid=:user_id", nativeQuery=true)
	List<Product> findByCart(@Param("user_id")int user_id);
}
