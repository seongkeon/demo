package com.raspberry.board.dao;

import com.raspberry.board.dto.ResCheckDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ResCheckDao {
    //사용자가 예약한 예약정보 출력 메소드
    List<ResCheckDto> checkResBookInfo(String uid);

}
