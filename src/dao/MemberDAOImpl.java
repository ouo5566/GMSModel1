package dao;

import java.util.*;
import domain.*;
import enums.Vendor;
import factory.Database;
import factory.DatabaseFactory;
import factory.Oracle;
import pool.DBConstants;

import java.sql.*;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}
	
	@Override
	public void insertMember(MemberBean member) {
		try {
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeQuery(
							String.format(" INSERT INTO MEMBER "
									+ " (MEMBER_ID, MEMBER_PW, NAME, SSN) "
									+ " VALUES "
									+ " ('%s','%s','%s','%s') ",
									member.getMemberId(), member.getPassword(), member.getName(), member.getSsn()));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<MemberBean> selectMemberAll() {
		return null;
	}
	@Override
	public MemberBean selectByWord(String word) {
		System.out.println("--아이디찾기--");
		System.out.println(word);
		MemberBean mem = null;
		try {
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeQuery(
							String.format(
							"  SELECT MEMBER_ID USERID " +
									"  FROM MEMBER " +
									"  WHERE MEMBER_ID LIKE '%s'"
								    , word));
			System.out.println("--쿼리실행--");
			if(rs.next()) {
				do{
					mem = new MemberBean();
					mem.setMemberId(rs.getString("USERID"));
				}while(rs.next());
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
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
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeQuery(
							String.format(
									"  SELECT MEMBER_ID USERID, " +
								    "  TEAM_ID TEAMID, " +
								    "  NAME, " +
								    "  SSN, " +
								    "  ROLL, " +
								    "  MEMBER_PW PW " +
									"  FROM MEMBER " +
									"  WHERE MEMBER_ID LIKE '%s' " +
								    "  AND MEMBER_PW LIKE '%s'"
								    , member.getMemberId() , member.getPassword() ));
			if(rs.next()) {
				do{
					mem = new MemberBean();
					mem.setMemberId(rs.getString("USERID"));
					mem.setTeamId(rs.getString("TEAMID"));
					mem.setName(rs.getString("NAME"));
					mem.setSsn(rs.getString("SSN"));
					mem.setRoll(rs.getString("ROLL"));
					mem.setPassword(rs.getString("PW"));
				}while(rs.next());
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
	}
	
	@Override
	public MemberBean selectUser(MemberBean member) {
		MemberBean mem = null;
		try {
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeQuery(
							String.format(
									"  SELECT MEMBER_ID USERID " +
									"  FROM MEMBER " +
									"  WHERE NAME LIKE '%s' " +
								    "  AND SSN LIKE '%s'"
								    , member.getName() , member.getSsn() ));
			if(rs.next()) {
				do{
					mem = new MemberBean();
					mem.setMemberId(rs.getString("USERID"));
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
	}
	
}
