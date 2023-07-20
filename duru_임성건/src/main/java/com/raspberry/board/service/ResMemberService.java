package com.raspberry.board.service;

import com.raspberry.board.dao.ResMemberDao;
import com.raspberry.board.dto.MemberDto;
import com.raspberry.board.dto.ResMemberDto;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Service
@Slf4j
public class ResMemberService {
    @Autowired
    private ResMemberDao rDao;

    private ModelAndView mv;
    //비밀번호 암호화를 위한 인코더 객체
    private BCryptPasswordEncoder pEncoder = new BCryptPasswordEncoder();

    //아이디 중복 확인 메소드
    public String rIdCheck(String rid){
        //리턴 타입과 같은 변수를 먼저 선언할 것.
        String res = null;

        //아이디가 중복이면 1, 아니면 0
        int cnt = rDao.rIdCheck(rid);

        if(cnt == 0){
            res = "ok";
        } else {
            res = "fail";
        }
        return res;
    }

    public String resJoin(ResMemberDto rmember, RedirectAttributes rttr) {
        log.info("resJoin()");
        String view = null;
        String msg = null;

        //비밀번호 암호화 처리
        String encpwd = pEncoder.encode(rmember.getRpwd());
        log.info(encpwd);
        //평문인 비밀번호를 암호문으로 덮어씀.
        rmember.setRpwd(encpwd);

        try{
            rDao.rJoin(rmember);
            view = "redirect:/";
            msg = "회원가입이 완료되었습니다.";

            log.info("회원가입 완료");
        } catch (Exception e){
            e.printStackTrace();
            view = "redirect:resJoin";
            msg = "회원가입에 실패하였습니다.";
        }
        rttr.addFlashAttribute("msg", msg);

        return view;
    }

    public String rLoginProc(ResMemberDto rmember, HttpSession session, RedirectAttributes rttr) {
        log.info("rLoginProc()");
        String view = null;
        String msg = null;

        //DB에서 회원의 비밀번호 구하기(암호문)
        String encPwd = rDao.selectPass(rmember.getRid());
        //encPwd에 담겨있을 수 있는 데이터
        // 1) null : 비회원인 경우
        // 2) 암호화된 비밀번호 문자열 : 회원인 경우
        if (encPwd != null) {
            // 아이디는 맞음(회원의 아이디)
            if (pEncoder.matches(rmember.getRpwd(), encPwd)) {
                // 비밀번호가 맞는 경우
                // 세션에 로그인 성공 정보(접속자 정보) 저장
                session.setAttribute("rid", rmember.getRid());
                //세션에 로그인 성공정보(접속자 정보) 저장.
                rmember = rDao.selectMember(rmember.getRid());
                //세션에 Dto저장
                session.setAttribute("rmb", rmember);
                // 로그인 성공 후 로그인 후 목록으로 이동
                return "redirect:/homeBus";
            } else {
                // 비밀번호가 틀린 경우
                rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
                return "redirect:/resLogin";
            }
        } else {
            // 아이디 없음(비회원)
            rttr.addFlashAttribute("msg", "아이디가 존재하지 않습니다.");
            return "redirect:/resLogin";
        }
    }
    public ModelAndView rFindId3(String rname, String rphone_num) {
        log.info("rFindId3()");
        mv = new ModelAndView();

        String resid = rDao.rFindId2(rname, rphone_num);

        mv.addObject("resid", resid);

        mv.setViewName("resFindId");

        return mv;
    }

    public boolean resResetPwd3(String rid, String rname, String rphone_num) {
        if (rDao.resResetPwd2(rid, rname, rphone_num)){
            return true;
        } else {
            return false;
        }
    }

    public String resRePw(String rpwd, String rid, RedirectAttributes rttr) {
        log.info("resRePw()");
        String msg = null;
        String encpwd = pEncoder.encode(rpwd);
        try{
            rDao.resMemberPwUpdate(encpwd, rid);
            msg = "비밀번호가 변경되었습니다.";
        }catch (Exception e){
            e.printStackTrace();
            msg = "비밀번호 변경 실패";
        }
        rttr.addFlashAttribute("msg", msg);
        return "redirect:resLogin";

    }
    // 마이페이지
    public ModelAndView resInfoUpdate(String rid) {
        log.info("resInfoUpdate()");

        ResMemberDto rmb = rDao.selectMember(rid);

        mv = new ModelAndView();
        mv.addObject("rmb", rmb);

        mv.setViewName("resInfoUpdate");
        return mv;
    }

    public String rInfoUpdate(ResMemberDto rmember, HttpSession session, RedirectAttributes rttr) {
        log.info("rInfoUpdate()");
        String msg = null;
        rDao.rInfoUpdate2(rmember);
        rmember = rDao.selectMember(rmember.getRid());
        //세션에 Dto저장
        session.setAttribute("rmb", rmember);
        msg = "회원 정보가 수정되었습니다.";
        rttr.addFlashAttribute("msg", msg);
        return "redirect:resInfo";
    }
    //회원 탈퇴
    public String rWithdProc(String rid) {
        log.info("rWithdProc()");
        String view = null;
        try{
            rDao.mDelete(rid);
            view = "home";
        }catch (Exception e){
            e.printStackTrace();
            view = "redirect:homeAfter?rid=" + rid;
        }
        return view;
    }
}
