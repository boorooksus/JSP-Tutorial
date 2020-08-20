/*package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/forum?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "123456";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String id, String password) {
		String SQL = "SELECT password FROM user WHERE id = ?";
		try {
			// prepared Statement에 SQL을 가져옴
			pstmt = conn.prepareStatement(SQL); 
			// SQL의 물음표에 id를 넣음
			pstmt.setString(1,  id);
			//result set에 결과 넣음
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return 1;  // 로그인 성공
				}
			}
			else
				return 0;  // 비밀번호 불일치
			
			return -1;  // 아이디가 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2;  // 데이터베이스 오류
	}
}*/

package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

 private Connection conn;
 private PreparedStatement pstmt;
 private ResultSet rs;

 public UserDAO() {
  try {
   String dbURL = "jdbc:mysql://localhost:3306/forum";
   String dbID = "root";
   String dbPassword = "123456";
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

  } catch (Exception e) {
   e.printStackTrace();
  }
 }

 public int login(String id, String password) {
  String SQL = "SELECT userPassword FROM USER WHERE userID=?";
  try {
   pstmt = conn.prepareStatement(SQL);
   pstmt.setString(1, id);
   rs = pstmt.executeQuery();
   if(rs.next()) {
    if(rs.getString(1).equals(password))
     return 1;  // 로그인 성공
    else
     return 0;  // 비밀번호 불일치
   }
   return -1;  // 아이디가 없음
   
  } catch(Exception e) {
   e.printStackTrace();
  }
  return -2; // 데이터 베이스 오류

 }
}
