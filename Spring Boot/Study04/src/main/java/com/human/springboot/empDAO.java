package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface empDAO {
	ArrayList<EmpDTO> list();		// 반환값, 메소드명,(매개변수들) 선언.
	ArrayList<RoomtypeDTO> listRoomtype();
	ArrayList<DepartmentsDTO> listDepartments();
	void insertRoomType(String typename); 	// insert용 메소드.
	void insertRoomInfo(String one, int two, int three, int four);
	void deleteRoomType(int typenum);
	void updateRoomType(String tname, int tnum);
	
	ArrayList<RoomInfoDTO> listRoomInfo();
	void deleteRoomInfo(String roomNum);
	void updateRoomInfo(String riNum, String riName, int riType, int riHowmany, int riHowmuch);
	
}
