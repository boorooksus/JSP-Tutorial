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
			// prepared Statement�� SQL�� ������
			pstmt = conn.prepareStatement(SQL); 
			// SQL�� ����ǥ�� id�� ����
			pstmt.setString(1,  id);
			//result set�� ��� ����
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return 1;  // �α��� ����
				}
			}
			else
				return 0;  // ��й�ȣ ����ġ
			
			return -1;  // ���̵� ����
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2;  // �����ͺ��̽� ����
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
     return 1;  // �α��� ����
    else
     return 0;  // ��й�ȣ ����ġ
   }
   return -1;  // ���̵� ����
   
  } catch(Exception e) {
   e.printStackTrace();
  }
  return -2; // ������ ���̽� ����

 }
}
