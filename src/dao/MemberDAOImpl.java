package dao;

import java.util.*;
import domain.*;
import enums.MemberQuery;
import enums.Vendor;
import factory.DatabaseFactory;
import pool.DBConstants;

import java.sql.*;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}
	
	@Override
	public void insertMember(MemberBean member) {
		try {
			DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeUpdate(
							String.format(MemberQuery.INSERT_MEMBER.toString(),
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
	public MemberBean selectById(String id) {
		System.out.println("--아이디찾기--");
		System.out.println(id);
		MemberBean mem = null;
		try {
			ResultSet rs = DatabaseFactory.createDatabase(Vendor.ORACLE, DBConstants.USERNAME, DBConstants.PASSWORD)
					.getConnection().createStatement().executeQuery(
							String.format(MemberQuery.SELECT_OVERLAP_ID.toString()
									, id));
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
		System.out.println("--쿼리끝--");
		System.out.println("--mem--");
		System.out.println(mem);
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
							String.format(MemberQuery.LOGIN.toString()
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
							String.format(MemberQuery.SELECT_OVERLAP_USER.toString()
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
