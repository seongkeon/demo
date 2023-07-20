package com.raspberry.board.service;

import com.raspberry.board.dao.MemberDao;
import com.raspberry.board.dto.MemberDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Service
@Slf4j
public class MemberService {
    @Autowired
    private MemberDao mDao;

    private ModelAndView mv;
    //비밀번호 암호화를 위한 인코더 객체
    private BCryptPasswordEncoder pEncoder = new BCryptPasswordEncoder();

    //아이디 중복 확인 메소드
    public String mIdCheck(String uid){
        //리턴 타입과 같은 변수를 먼저 선언할 것.
        String res = null;

        //아이디가 중복이면 1, 아니면 0
        int cnt = mDao.mIdCheck(uid);

        if(cnt == 0){
            res = "ok";
        } else {
            res = "fail";
        }

        return res;
    }


    public String userJoin(MemberDto member, RedirectAttributes rttr) {
        log.info("userJoin()");
        String view = null;
        String msg = null;

        //비밀번호 암호화 처리
        String encpwd = pEncoder.encode(member.getUpwd());
        log.info(encpwd);
        //평문인 비밀번호를 암호문으로 덮어씀.
        member.setUpwd(encpwd);

        try{
            mDao.mJoin(member);
            view = "redirect:/";
            msg = "회원가입이 완료되었습니다.";

            log.info("회원가입 완료");
        } catch (Exception e){
            e.printStackTrace();
            view = "redirect:userJoin";
            msg = "회원가입에 실패하였습니다.";
        }
        rttr.addFlashAttribute("msg", msg);

        return view;
    }

    public String mLoginProc(MemberDto member, HttpSession session, RedirectAttributes rttr){
        log.info("mLoginProc()");
        String view = null;
        String msg = null;

        //DB에서 회원의 비밀번호 구하기(암호문)
        String encPwd = mDao.selectPass(member.getUid());
        //encPwd에 담겨있을 수 있는 데이터
        // 1) null : 비회원인 경우
        // 2) 암호화된 비밀번호 문자열 : 회원인 경우
        if (encPwd != null){
            //아이디는 맞음(회원의 아이디)
            if (pEncoder.matches(member.getUpwd(), encPwd)){
                //비밀번호가 맞는 경우
                //세션에 로그인 성공정보(접속자 정보) 저장.
                member = mDao.selectMember(member.getUid());
                //세션에 Dto저장
                session.setAttribute("mb", member);

                //로그인 성공후 게시판 목록으로 이동
                view = "redirect:/";
                msg = "로그인에 성공하였습니다.";
            } else {
                //비밀번호가 틀린경우
                view = "redirect:userLogin";
                msg = "비밀번호가 일치하지 않습니다.";
                log.info(member.getUid());
                log.info(member.getUpwd());
            }
        }else {
            //아이디 없음(비회원)
            view = "redirect:userLogin";
            msg = "아이디가 존재하지 않습니다.";
        }

        rttr.addFlashAttribute("msg", msg);
        return view;
    }

    public ModelAndView getMember(String uid){
        log.info("getMember()");
        mv = new ModelAndView();

        MemberDto member = mDao.selectMember(uid);

        mv.addObject("member", member);

        mv.setViewName("userInfo");

        return mv;
    }
}
