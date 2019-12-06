package com.nibm.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.nibm.model.Product;
import com.nibm.model.cart;

public interface CartRepo extends JpaRepository<cart, Integer>{

	@Query(value="SELECT * FROM cart where prod_id=:prod_id AND uid=:uid", nativeQuery = true)
	cart existCart(@Param("prod_id") int prod_id, @Param("uid") int uid);
}
