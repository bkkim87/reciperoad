package DBBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LogonDBBean {
	
    private static LogonDBBean instance = new LogonDBBean();
    
    public static LogonDBBean getInstance() {
        return instance;
    }
    
    private LogonDBBean() { }
	
	private Connection getConnection() throws Exception {
	    Context initCtx = new InitialContext();
	    Context envCtx = (Context) initCtx.lookup("java:comp/env");
	    DataSource ds = (DataSource)envCtx.lookup("jdbc/2b06_db");
	    return ds.getConnection();
	}
	
	public void insertMember(LogonDataBean member) 
		              throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		 Timestamp reg_date=new Timestamp(System.currentTimeMillis());
			        
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(
			    "insert into MEMBER values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, member.getMem_id());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getJob());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getZipcode());
			pstmt.setString(7, member.getAddress1());
			pstmt.setString(8, member.getAddress2());
			pstmt.setString(9, member.getGender());
			pstmt.setString(10, member.getMem_name());
			pstmt.setString(11, member.getMem_num1());
			pstmt.setString(12, member.getMem_num2());
			pstmt.setString(13, member.getPwhint());
			pstmt.setString(14, member.getHintanswer());
			pstmt.setTimestamp(15, reg_date);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if (pstmt != null) 
				try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) 
				try { conn.close(); } catch(SQLException ex) {}
		}
	}
			 
	public int userCheck(String id, String passwd) 
				throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;
		
		try{
			conn = getConnection();
			            
			pstmt = conn.prepareStatement(
			    "select passwd from MEMBER where mem_id = ?");
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();

			if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd))
					x = 1; //인증 성공
				else
					x = 0; //비밀번호 틀림
			}else
				x = -1;//해당 아이디 없음
						
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally{
			if (rs != null) 
				try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) 
				try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) 
				try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	
	//아이디 찾기
		public String searchId(String mem_name, String phone){
			
			Connection conn=null;
			PreparedStatement pstmt = null;
			ResultSet rs =null;
			String str=null;
		
			try{
				conn=getConnection();
				String sql = "select * from member where mem_name=? and phone=? ";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,mem_name);
				pstmt.setString(2,phone);
				rs=pstmt.executeQuery();
				if(rs.next()){
					String dbMem_name=rs.getString("mem_name");
					String dbPhone=rs.getString("phone");
					if(mem_name.equals(dbMem_name) && phone.equals(dbPhone)){
						str="찾으시는 아이디는"+rs.getString("mem_id")+"입니다";
					}else{
						str="핸드폰번호가 틀렸습니다.";
					}
				}else{
					str="입력하신 이름은 틀렸습니다..";
				}
			}catch(Exception ex){
				System.out.println("Exception"+ex);
			}finally{
				if(rs != null)try{rs.close();}catch(SQLException e){}
				if(pstmt != null)try{pstmt.close();}catch(SQLException e){}
				if(conn != null)try{conn.close();}catch(SQLException e){}
			}return str;
		}//searchId()
		
			//비밀번호 찾기
			public int searchPw(String mem_id, String pwhint, String hintanswer){
				
				Connection conn=null;
				PreparedStatement pstmt = null;
				ResultSet rs =null;
				int x=0;
			
				try{
					conn=getConnection();
					String sql = "select * from member where mem_id=? and pwhint=? and hintanswer=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1,mem_id);
					pstmt.setString(2,pwhint);
					pstmt.setString(3,hintanswer);
					rs=pstmt.executeQuery();
					if(rs.next()){
						String dbMem_id=rs.getString("mem_id");
						String dbPwhint=rs.getString("pwhint");
						String dbHintanswer=rs.getString("hintanswer");
						if(mem_id.equals(dbMem_id) && pwhint.equals(dbPwhint) && hintanswer.equals(dbHintanswer)){
							x=1;
						}
					}else{
						x=-1;
					}
				}catch(Exception ex){
					System.out.println("Exception"+ex);
				}finally{
					if(rs != null)try{rs.close();}catch(SQLException e){}
					if(pstmt != null)try{pstmt.close();}catch(SQLException e){}
					if(conn != null)try{conn.close();}catch(SQLException e){}
				}return x;
			}//searchId()
			
			//비밀번호 수정하기
			public void updatePw(String mem_id, String passwd){
				Connection conn=null;
				PreparedStatement pstmt=null;
			
				try{
					conn=getConnection();
					String sql="update member set passwd=? where mem_id=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, passwd);
					pstmt.setString(2, mem_id);
					pstmt.executeUpdate();
				}catch(Exception ex){
					System.out.println("Exception"+ex);
				}finally{
					if(pstmt != null)try{pstmt.close();}catch(SQLException e){}
					if(conn != null)try{conn.close();}catch(SQLException e){}
				}
			}
			
			//아이디 중복검사
			public int dupilicateCheck(String mem_id){
				int x=0;
				Connection conn=null;
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				try{
					conn=getConnection();
					String sql="select * from member where mem_id=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, mem_id);
					rs=pstmt.executeQuery();
					if(rs.next()){
						x=-1;
					}else{
						x=1;
					}
				}catch(Exception ex){
					System.out.println("Exception"+ex);
				}finally{
					if(rs != null)try{rs.close();}catch(SQLException e){}
					if(pstmt != null)try{pstmt.close();}catch(SQLException e){}
					if(conn != null)try{conn.close();}catch(SQLException e){}
				}
				return x;
			}
}