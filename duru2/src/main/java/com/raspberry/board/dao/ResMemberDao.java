package com.raspberry.board.dao;

import com.raspberry.board.dto.ResMemberDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResMemberDao {
    //음식점 아이디 체크 메소드
    int rIdCheck(String rid);

    //프로그램 회원가입 메소드
    void rJoin(ResMemberDto rmember);

    //프로그램 회원의 비밀번호 검색 메소드
    String selectPass(String rid);

    //사용자의 정보를 가져오는 메소드
    ResMemberDto selectMember(String rid);
}
