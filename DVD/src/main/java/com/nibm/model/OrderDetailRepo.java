package com.nibm.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDetailRepo extends JpaRepository<OrderDetail, Integer> {

	@Query("from OrderDetail where order_id = ?#{[0]}")
	List<OrderDetail> MyFindById(int id);
}
