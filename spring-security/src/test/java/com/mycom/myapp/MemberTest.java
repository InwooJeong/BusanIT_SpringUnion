package com.mycom.myapp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
public class MemberTest {

	@Autowired // 타입으로 주입
	private PasswordEncoder pwencoder;
	@Autowired
	private DataSource dataSource;

	@Test
	public void testInsertMember() {

		String sql = "INSERT INTO tbl_member(userid, userpw, username) VALUES (?,?,?)";

		for (int i = 0; i < 100; i++) {
			Connection con = null;
			PreparedStatement ps = null;

			try {
				con = dataSource.getConnection();
				ps = con.prepareStatement(sql);

				ps.setString(2, pwencoder.encode("pw" + i));
				if (i < 80) {
					ps.setString(1, "user" + i);
					ps.setString(3, "일반사용자" + i);
				} else if (i < 90) {
					ps.setString(1, "manager" + i);
					ps.setString(3, "운영자" + i);
				} else {
					ps.setString(1, "admin" + i);
					ps.setString(3, "관리자" + i);
				}
				ps.executeUpdate();
				// System.out.println("DB 작업 끝@@@");

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (ps != null)
						ps.close();
					if (con != null)
						con.close();
					// System.out.println("DB 자원 해제@@@");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}

	} // testInsertMember

	@Test
	public void testInsertAuth() {

		String sql = "INSERT INTO tbl_member_auth(userid,auth) VALUES (?,?)";

		for (int i = 0; i < 100; i++) {
			Connection con = null;
			PreparedStatement ps = null;

			try {
				con = dataSource.getConnection();
				ps = con.prepareStatement(sql);

				if (i < 80) {
					ps.setString(1, "user" + i);
					ps.setString(2, "ROLE_USER");
				} else if (i < 90) {
					ps.setString(1, "manager" + i);
					ps.setString(2, "ROLE_MANAGER");
				} else {
					ps.setString(1, "admin" + i);
					ps.setString(2, "ROLE_ADMIN");
				}
				ps.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					if (ps != null)
						ps.close();
					if (con != null)
						con.close();
					// System.out.println("DB 자원 해제@@@");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}

}
