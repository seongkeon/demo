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

    //음식점 사업자의 아이디를 가져오는 메소드
    String rFindId2(String rname, String rphone_num);

    boolean resResetPwd2(String rid, String rname, String rphone_num);

    //음식점 사업자의 비밀번호 재설정 메소드
    void resMemberPwUpdate(String rpwd, String rid);

    //사용자의 정보를 수정하는 메소드
    void rInfoUpdate2(ResMemberDto rmember);

    //회원 정보를 삭제하는 메소드
    void mDelete(String rid);
}
