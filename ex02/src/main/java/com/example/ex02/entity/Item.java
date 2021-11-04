package com.example.ex02.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="item")
@Getter
@Setter
@ToString
public class Item {
	@Id
	@Column(name="item_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(nullable=false, length=50)
	private String itemname;
	@Column(nullable=false)
	private int price;
	@Lob
	@Column(nullable=false)
	private String itemDetail;
	private int stackNumber;
	private LocalDateTime regTime;
}