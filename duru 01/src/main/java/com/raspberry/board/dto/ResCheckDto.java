package com.raspberry.board.dto;

import lombok.Data;

@Data
public class ResCheckDto {
    //예약 정보 출력 하기위한 Dto
    private String rname;
    private String raddr;
    private String rb_uname;
    private String rtime;
    private String rhead_count;
    private String uid;
    private String rid;
    private int rbook_num;
}
