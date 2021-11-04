package com.example.ex02.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.ex02.entity.Item;

@SpringBootTest
public class ItemRepositoryTest {
	@Autowired
	ItemRepository itemRepository;
	
	@PersistenceContext
    EntityManager em;
	
	@Test
	@DisplayName("상픔 저장 테스트")
	public void createItemTest() {
		 Item item = new Item();
	     item.setItemname("테스트 상품");
	     item.setPrice(10000);
	     item.setItemDetail("테스트 상품 상세 설명");
	     item.setRegTime(LocalDateTime.now());
	     Item savedItem = itemRepository.save(item);
	     System.out.println(savedItem.toString());
		
	}
	
	@Test
	@DisplayName("상품 리스트 저장 테스트")
	public void createItemList(){
        for(int i=1;i<=10;i++){
            Item item = new Item();
            item.setItemname("테스트 상품" + i);
            item.setPrice(10000 + i);
            item.setItemDetail("테스트 상품 상세 설명" + i);
            item.setRegTime(LocalDateTime.now());
            Item savedItem = itemRepository.save(item);
        }
    }
	
	@Test
	public void findAllTest() {
		List<Item> itemList=itemRepository.findAll();
		for(Item item:itemList) {
			System.out.println(item.toString());
		}	
	}
	
	@Test
	public void findByIdTest() {
		Optional<Item> itemOptional=itemRepository.findById(5L);
		if(itemOptional.isPresent()) {
			System.out.println(itemOptional.toString());
		}
	}
	
	@Test
	public void findByItemnameTest() {
		List<Item> itemList=itemRepository.findByItemname("테스트 상품1");
		for(Item item:itemList) {
			System.out.println(item.toString());
		}
	}
	@Test
    @DisplayName("상품명, 상품상세설명 or 테스트")
    public void findByItemnameOrItemDetailTest(){
        List<Item> itemList = itemRepository.findByItemnameOrItemDetail("테스트 상품1", "테스트 상품 상세 설명5");
        for(Item item : itemList){
            System.out.println(item.toString());
        }
    }
	@Test
    @DisplayName("가격 LessThan 테스트")
    public void findByPriceLessThanTest(){
        this.createItemList();
        List<Item> itemList = itemRepository.findByPriceLessThan(10005);
        for(Item item : itemList){
            System.out.println(item.toString());
        }
    }
	@Test
    @DisplayName("가격 내림차순 조회 테스트")
    public void findByPriceLessThanOrderByPriceDesc(){
        this.createItemList();
        List<Item> itemList = itemRepository.findByPriceLessThanOrderByPriceDesc(10005);
        for(Item item : itemList){
            System.out.println(item.toString());
        }
    }
	@Test
    @DisplayName("@Query를 이용한 상품 조회 테스트")
    public void findByItemDetailTest(){
        this.createItemList();
        List<Item> itemList = itemRepository.findByItemDetail("테스트 상품");
        for(Item item : itemList){
            System.out.println(item.toString());
        }
    }
	
	@Test
    @DisplayName("nativeQuery속성을 이용한 상품 조회 테스트")
    public void findByItemDetailByNativeTest(){
        //this.createItemList();
        List<Item> itemList = itemRepository.findByItemDetailByNative("테스트 상품");
        for(Item item : itemList){
            System.out.println(item.toString());
        }
    }

}