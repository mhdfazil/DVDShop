package com.nibm.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderHeadRepo extends JpaRepository<OrderHead, Integer> {

	@Query("from OrderHead where order_id = ?#{[0]}")
	OrderHead MyFindById(int id);
	
	@Query("from OrderHead where state = 'N'")
	List<OrderHead> findNonshipped();
	
	@Query("from OrderHead where state = 'S'")
	List<OrderHead> findShipped();
}
