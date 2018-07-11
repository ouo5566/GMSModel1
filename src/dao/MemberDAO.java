package dao;
import java.util.List;
import domain.*;

public interface MemberDAO {
	public void insertMember(MemberBean member);
	public List<MemberBean> selectMemberAll();
	public List<MemberBean> selectByWord(String word);
	public MemberBean selectById(MemberBean member);
	public String selectMemberCount();
	public void updateMember(MemberBean member);
	public void deleteMember(MemberBean member);
	public MemberBean login(MemberBean member);
}
