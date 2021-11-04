package com.bugi.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.bugi.domain.MemberVO;

public interface MemberMapper {
	
	/*
	 * @Insert("INSERT INTO member(m_number, nickname, id, passwd, gender, m_address, phone, email) "
	 * +"VALUES(#{mNumber}, #{nickname}, #{id}, #{passwd}, #{gender}, #{mAddress}, #{phone}, #{email})"
	 * ) void joinTest(MemberVO memberVO);
	 *
	 */
	
	@Select("SELECT IFNULL(MAX(m_number),0)+1 AS mNumber FROM member") 
	int	nextNum();
	
	MemberVO loginWithSecurity(String username);
	
	@Select("SELECT * FROM member WHERE username = #{username}")
	MemberVO getMemberById(String username);
	
	@Select("SELECT COUNT(*) FROM member WHERE username = #{username}")
	int getCountById(String username);
	
	@Select("SELECT COUNT(*) FROM member WHERE nickname = #{nickname}")
	int getCountByNick(String nickname);
	
	@Insert("INSERT INTO member(m_number, nickname, username, password, gender, m_address, phone, email, recv_email, recv_tel) "
			+" VALUES (#{mNumber},#{nickname},#{username},#{password},#{gender},#{mAddress},#{phone},#{email},#{recvEmail},#{recvTel})")
	void join(MemberVO memberVO);
	
	@Insert("INSERT INTO member_auth(user_number) VALUES (#{mNumber})")
	void giveAuth(int mNumber);

}
