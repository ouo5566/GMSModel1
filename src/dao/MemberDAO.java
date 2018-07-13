package dao;
import java.util.List;
import domain.*;

public interface MemberDAO {
	public void insertMember(MemberBean member);
	public List<MemberBean> selectMemberAll();
	public MemberBean selectById(String id);
	public MemberBean selectById(MemberBean member);
	public String selectMemberCount();
	public void updateMember(MemberBean member);
	public void deleteMember(MemberBean member);
	public MemberBean login(MemberBean member);
	public MemberBean selectUser(MemberBean member);
}
