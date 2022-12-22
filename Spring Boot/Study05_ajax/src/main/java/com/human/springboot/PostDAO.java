package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PostDAO {
	void addWrite(String title, String content, String writer);
	ArrayList<WriteDTO> listWrite();
	PostingDTO getWrite(int post_id);
	void getDelete (int post_id);
	void getUpdate(int post_id, String title, String content);

}
