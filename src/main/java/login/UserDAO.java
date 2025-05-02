package login;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class UserDAO {

	private Connection conn=null;
	
	public UserDAO() {
		System.out.println("생성완료");
		
		try{
			
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			System.out.println("<h3>연결되었습니다.</h3>");
		}catch(Exception e){
			System.out.println("<h3>연결에 실패했습니다.</h3>");
			e.printStackTrace();
		}
		
	}
	
	
}
