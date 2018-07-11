package service;

import java.util.ArrayList;
import java.util.List;

import dao.MemberDAOImpl;
import domain.*;

public class MemberServiceImpl implements MemberService{
	private static MemberService instance = new MemberServiceImpl();
	public static MemberService getInstance() {return instance;}
	private MemberServiceImpl() {}

	@Override
	public void createMember(MemberBean member) {
		
	}

	@Override
	public List<MemberBean> list() {
		List<MemberBean> list = new ArrayList<>();
		return list;
	}

	@Override
	public List<MemberBean> searchSome(String word) {
		List<MemberBean> result = new ArrayList<>();
		return result;
	}

	@Override
	public MemberBean searchOne(MemberBean member) {
		MemberBean result = new MemberBean();
		return result;
	}

	@Override
	public String memberCount() {
		String result = "";
		return result;
	}

	@Override
	public void modifyMember(MemberBean member) {
		
	}

	@Override
	public void removeMember(MemberBean member) {
		
	}
	@Override
	public boolean login(MemberBean member) {
		return (MemberDAOImpl.getInstance().login(member)!=null);
	}

}
