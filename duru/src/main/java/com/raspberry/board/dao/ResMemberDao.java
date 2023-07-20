package com.raspberry.board.dao;

import com.raspberry.board.dto.ResMemberDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResMemberDao {
    //음식점 아이디 체크 메소드
    int rIdCheck(String rid);

    //프로그램 회원가입 메소드
    void rJoin(ResMemberDto rmember);
}
