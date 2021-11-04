package com.example.ex02.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.ex02.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Long> {
	List<Item> findByItemname(String itemname);

	List<Item> findByItemnameOrItemDetail(String string, String string2);

	List<Item> findByPriceLessThan(int i);

	List<Item> findByPriceLessThanOrderByPriceDesc(int i);
	 
	@Query("select i from Item i where i.itemDetail like %:itemDetail% order by i.price desc") 
	List<Item> findByItemDetail(@Param("itemDetail") String itemDetail);
	
	@Query(value="select * from item i where i.item_detail like %:itemDetail% order by i.price desc", nativeQuery=true) 
	List<Item> findByItemDetailByNative(@Param("itemDetail") String itemDetail);
	
}