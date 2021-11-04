package com.bugi.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private final int PAGE_BLOCK = 5;
	
	private int totalCount;
	private Criteria cri;
	
	public PageDTO(int totalCount, Criteria cri) {
		this.totalCount = totalCount;
		this.cri = cri;
		
		endPage = (int)Math.ceil((double)cri.getPageNum()/PAGE_BLOCK)*PAGE_BLOCK;
		startPage = endPage - (PAGE_BLOCK-1);
		
		int realEnd = (int)Math.ceil((double)totalCount/cri.getAmount());
		
		if(realEnd<endPage) {
			endPage = realEnd;
		}
		
		prev = startPage > 1;
		
		next = endPage < realEnd;
	}
	
}
