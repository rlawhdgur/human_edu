package com.human.springboot;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	
	void insertMember(String userid, String passcode, String name, String mobile);
	int getMemberCount(String userid, String passcode);
	int checkDup(String userid);


}
