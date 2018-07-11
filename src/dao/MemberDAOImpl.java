package dao;

import java.util.*;
import domain.*;
import java.sql.*;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}
	@Override
	public void insertMember(MemberBean member) {
		
	}
	@Override
	public List<MemberBean> selectMemberAll() {
		return null;
	}
	@Override
	public List<MemberBean> selectByWord(String word) {
		return null;
	}
	@Override
	public MemberBean selectById(MemberBean member) {
		return null;
	}
	@Override
	public String selectMemberCount() {
		return null;
	}
	@Override
	public void updateMember(MemberBean member) {
		
	}
	@Override
	public void deleteMember(MemberBean member) {
		
	}
	@Override
	public MemberBean login(MemberBean member) {
		MemberBean mem = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ssoso", "sweet93");
			Statement stmt = conn.createStatement();
			String sql = String.format(
					"  SELECT MEMBER_ID USERID, " +
				    "  TEAM_ID TEAMID, " +
				    "  NAME, " +
				    "  AGE, " +
				    "  ROLL, " +
				    "  MEMBER_PW PW " +
					"  FROM MEMBER " +
					"  WHERE MEMBER_ID LIKE '%s' " +
				    "  AND MEMBER_PW LIKE '%s'"
				    , member.getMemberId() , member.getPassword() );
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				do{
					mem = new MemberBean();
					mem.setMemberId(rs.getString("USERID"));
					mem.setTeamId(rs.getString("TEAMID"));
					mem.setName(rs.getString("NAME"));
					mem.setAge(rs.getString("AGE"));
					mem.setRoll(rs.getString("ROLL"));
					mem.setPassword(rs.getString("PW"));
				}while(rs.next());
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
	}
	
}
