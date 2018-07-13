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
		System.out.println("--회원가입--");
		System.out.println(member);
		MemberDAOImpl.getInstance().insertMember(member);
	}

	@Override
	public List<MemberBean> list() {
		List<MemberBean> list = new ArrayList<>();
		return list;
	}

	@Override
	public boolean findById(String id) {
		System.out.println("--중복되는 아이디 찾기--");
		System.out.println(id);
		return (MemberDAOImpl.getInstance().selectById(id)==null);
	}

	@Override
	public MemberBean findById(MemberBean member) {
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
		System.out.println("--로그인--");
		System.out.println(member);
		return (MemberDAOImpl.getInstance().login(member)!=null);
		// null 도 주소값을 가지고 있다. 직접 그 주소값에 가서 뒤져야 하기 때문에 null을 Script까지 가져가는건 좋지 않다.
	}
	@Override
	public boolean findByUser(MemberBean member){
		System.out.println("--계정찾기--");
		System.out.println(member);
		return (MemberDAOImpl.getInstance().selectUser(member)==null);
	}

}
