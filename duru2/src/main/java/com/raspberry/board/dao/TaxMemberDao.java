package com.raspberry.board.dao;

import com.raspberry.board.dto.TaxMemberDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TaxMemberDao {
    //택시 아이디 체크 메소드
    int tIdCheck(String tid);

    //택시 회원가입 메소드
    void tJoin(TaxMemberDto tmember);

    //택시 회원의 비밀번호 검색 메소드
    String selectPass(String tid);

    //사용자의 정보를 가져오는 메소드
    TaxMemberDto selectMember(String tid);
}
