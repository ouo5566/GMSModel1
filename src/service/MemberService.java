package service;
import java.util.List;
import domain.*;

public interface MemberService {
	public void createMember(MemberBean member);
	public List<MemberBean> list();
	public List<MemberBean> searchSome(String word);
	public MemberBean searchOne(MemberBean member);
	public String memberCount();
	public void modifyMember(MemberBean member);
	public void removeMember(MemberBean member);
	public boolean login(MemberBean member);
}
