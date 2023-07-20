package com.raspberry.board.service;

import com.raspberry.board.dao.ResMemberDao;
import com.raspberry.board.dto.ResMemberDto;
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
}
