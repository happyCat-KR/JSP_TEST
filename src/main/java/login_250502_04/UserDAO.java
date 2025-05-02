package login_250502_04;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class UserDAO {

	private Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public UserDAO() {
		System.out.println("생성완료");

		try {

			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();

			System.out.println("연결되었습니다.");
		} catch (Exception e) {
			System.out.println("연결에 실패했습니다.");
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public void conClose() {
		try {
			if (rs != null)
				rs.close();
		} catch (Exception e) {
		}
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (Exception e) {
		}
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
		}

	}

	public int regiset(UserVO userVO) {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();

			String input = "INSERT INTO MEMBER_250502_04 (user_id, user_pw, user_email, user_name, user_num, user_address, user_birthday, interest, introduce)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? )";
			pstmt = conn.prepareStatement(input);
			pstmt.setString(1, userVO.getUser_id());
			pstmt.setString(2, userVO.getUser_pw());
			pstmt.setString(3, userVO.getUser_email());
			pstmt.setString(4, userVO.getUser_name());
			pstmt.setString(5, userVO.getUser_num());
			pstmt.setString(6, userVO.getUser_address());
			pstmt.setString(7, userVO.getUser_birthday());
			pstmt.setString(8, userVO.getInterest());
			pstmt.setString(9, userVO.getIntroduce());
			

			int result = pstmt.executeUpdate();
			if (result > 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			conClose();
		}
		return 0;

	}

	public UserVO login(String input_id) {
		UserVO userVO = null;
		try {
			
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			
			String sql = "SELECT user_pw, user_id FROM member_250502_04 WHERE user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input_id);
			
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				userVO = new UserVO();
				String user_pw = rs.getString("user_pw");
				String user_id = rs.getString("user_id");
				
				
				
				userVO.setUser_pw(user_pw);
				userVO.setUser_id(user_id);
				return userVO;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			conClose();
		}
		return userVO;
	}

}
