package com.balancediary.diary.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balancediary.diary.vo.diaryVO;

@Service
public class diaryService {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void testSetDiary(diaryVO vo) {
		sqlSessionTemplate.insert("diary.insertdiary", vo);
	}
	
}
