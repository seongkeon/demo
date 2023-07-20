package com.raspberry.board.service;

import com.raspberry.board.dao.TaxMemberDao;
import com.raspberry.board.dto.TaxMemberDto;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Service
@Slf4j
public class TaxMemberService {
    @Autowired
    private TaxMemberDao tDao;

    private ModelAndView mv;
    private BCryptPasswordEncoder pEncoder = new BCryptPasswordEncoder();

    //아이디 중복 확인 메소드
    public String tIdCheck(String tid){
        //리턴 타입과 같은 변수를 먼저 선언할 것.
        String res = null;

        //아이디가 중복이면 1, 아니면 0
        int cnt = tDao.tIdCheck(tid);

        if(cnt == 0){
            res = "ok";
        } else {
            res = "fail";
        }
        return res;
    }

    public String taxJoin(TaxMemberDto tmember, RedirectAttributes rttr) {
        log.info("taxJoin()");
        String view = null;
        String msg = null;

        //비밀번호 암호화 처리
        String encpwd = pEncoder.encode(tmember.getTpwd());
        log.info(encpwd);
        //평문인 비밀번호를 암호문으로 덮어씀.
        tmember.setTpwd(encpwd);

        try{
            tDao.tJoin(tmember);
            view = "redirect:/";
            msg = "회원가입이 완료되었습니다.";

            log.info("회원가입 완료");
        } catch (Exception e){
            e.printStackTrace();
            view = "redirect:taxJoin";
            msg = "회원가입에 실패하였습니다.";
        }
        rttr.addFlashAttribute("msg", msg);

        return view;
    }

    public String tLoginProc(TaxMemberDto tmember, HttpSession session, RedirectAttributes rttr) {
        log.info("tLoginProc()");
        String view = null;
        String msg = null;

        //DB에서 회원의 비밀번호 구하기(암호문)
        String encPwd = tDao.selectPass(tmember.getTid());
        //encPwd에 담겨있을 수 있는 데이터
        // 1) null : 비회원인 경우
        // 2) 암호화된 비밀번호 문자열 : 회원인 경우
        if (encPwd != null) {
            // 아이디는 맞음(회원의 아이디)
            if (pEncoder.matches(tmember.getTpwd(), encPwd)) {
                // 비밀번호가 맞는 경우
                // 세션에 로그인 성공 정보(접속자 정보) 저장
                session.setAttribute("tid", tmember.getTid());

                // 로그인 성공 후 로그인 후 목록으로 이동
                return "redirect:/homeBus";
            } else {
                // 비밀번호가 틀린 경우
                rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
                return "redirect:/taxLogin";
            }
        } else {
            // 아이디 없음(비회원)
            rttr.addFlashAttribute("msg", "아이디가 존재하지 않습니다.");
            return "redirect:/taxLogin";
        }
    }

    public String tlogout(HttpSession session) {
        log.info("tlogout()");
        session.invalidate();
        return "redirect:/";//첫페이지로 이동
    }
}
