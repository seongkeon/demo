package com.raspberry.board.controller;

import com.raspberry.board.dto.MemberDto;
import com.raspberry.board.dto.ProMemberDto;
import com.raspberry.board.dto.ResMemberDto;
import com.raspberry.board.service.MemberService;
import com.raspberry.board.service.ProMemberService;
import com.raspberry.board.service.ResMemberService;
import com.raspberry.board.service.TaxMemberService;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Slf4j
public class HomeController {
    @Autowired
    private MemberService mServ;
    @Autowired
    private ResMemberService rServ;
    @Autowired
    private TaxMemberService tServ;
    @Autowired
    private ProMemberService pServ;

    private ModelAndView mv;

    @GetMapping("/")
    public String userInfo(){
        log.info("home()");
        return "home";
    }
    @GetMapping("homeBus")
    public String homeBus(){
        log.info("homeBus()");
        return "homeBus";
    }

    @GetMapping("map")
    public String map(){
        log.info("map");
        return "map";
    }

    @GetMapping("introduce")
    public String introduce(){
        log.info("introduce()");
        return "introduce";
    }

    //회원가입 유형 선택
    @GetMapping("joinSelect")
    public String joinSelect(){
        log.info("joinSelect()");
        return "joinSelect";
    }

    //로그인 유형 선택
    @GetMapping("loginSelect")
    public String loginSelect(){
        log.info("loginSelect()");
        return "loginSelect";
    }

    //사용자 회원가입 페이지 이동
    @GetMapping("userJoin")
    public String userJoin(){
        log.info("userJoin()");
        return "userJoin";
    }
    //음식점 사업자 회원가입 페이지 이동
    @GetMapping("resJoin")
    public String resJoin(){
        log.info("resJoin()");
        return "resJoin";
    }
    //음식점 사업자 회원가입 페이지 이동
    @GetMapping("taxJoin")
    public String taxJoin(){
        log.info("taxJoin()");
        return "taxJoin";
    }
    //프로그램 사업자 회원가입 페이지 이동
    @GetMapping("proJoin")
    public String proJoin(){
        log.info("proJoin()");
        return "proJoin";
    }

    ///////////사용자////////////
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("mIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String mIdCheck(String uid){
        log.info("mIdCheck()");
        String res = mServ.mIdCheck(uid);

        return res;
    }

    @PostMapping ("userJoinProc")
    public String userJoinProc(MemberDto member, RedirectAttributes rttr){
        log.info("userJoinProc()");
        String view = mServ.userJoin(member, rttr);

        return view;
    }

    @GetMapping("userLogin")
    public String userLogin(){
        log.info("userLogin()");
        return "userLogin";
    }

    @PostMapping("mLoginProc")
    public String mLoginProc(MemberDto member,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("mLoginProc()");
        String view = mServ.mLoginProc(member,session,rttr);
        return view;
    }

    ///////////음식점////////////
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("rIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String rIdCheck(String pid){
        log.info("rIdCheck()");
        String res = rServ.rIdCheck(pid);

        return res;
    }

    @PostMapping ("resJoinProc")
    public String resJoinProc(ResMemberDto rmember, RedirectAttributes rttr){
        log.info("resJoinProc()");
        String view = rServ.resJoin(rmember, rttr);

        return view;
    }

    @GetMapping("resLogin")
    public String resLogin(){
        log.info("resLogin()");
        return "resLogin";
    }



    ///////////택시////////////
    @GetMapping("taxLogin")
    public String taxLogin(){
        log.info("taxLogin()");
        return "taxLogin";
    }

    ///////////프로그램////////////
    @GetMapping("proLogin")
    public String proLogin(){
        log.info("proLogin()");
        return "proLogin";
    }

    @PostMapping("pLoginProc")
    public String pLoginProc(ProMemberDto pmember,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("pLoginProc()");
        String view = pServ.pLoginProc(pmember,session,rttr);
        return view;
    }
    //REST 방식(Ajax)으로 전송할 경우의 메소드
    @GetMapping("pIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String pIdCheck(String pid){
        log.info("pIdCheck()");
        String res = pServ.pIdCheck(pid);

        return res;
    }

    @PostMapping ("proJoinProc")
    public String proJoinProc(ProMemberDto pmember, RedirectAttributes rttr){
        log.info("proJoinProc()");
        String view = pServ.proJoin(pmember, rttr);

        return view;
    }

    @GetMapping("userInfo")
    public ModelAndView userInfo(String uid){
        log.info("userInfo()");
        mv = mServ.getMember(uid);

        return mv;
    }




}
