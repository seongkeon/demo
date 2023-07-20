package com.raspberry.board.controller;

import com.raspberry.board.dto.MemberDto;
import com.raspberry.board.dto.ProMemberDto;
import com.raspberry.board.dto.ResMemberDto;
import com.raspberry.board.dto.TaxMemberDto;
import com.raspberry.board.service.MemberService;
import com.raspberry.board.service.ProMemberService;
import com.raspberry.board.service.ResMemberService;
import com.raspberry.board.service.TaxMemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String home(){
        log.info("home()");
        return "home";
    }

//    @GetMapping("homeAfter")
//    public String homeAfter(){
//        log.info("homeAfter()");
//        return "homeAfter";
//    }

    //사용자 로그인후 아이디 전달
    @GetMapping("homeAfter")
    public String homeAfter(HttpSession session, Model model) {
        log.info("homeAfter");

        // 세션에서 회원 아이디 값을 가져옵니다.
        String uid = (String) session.getAttribute("uid");
        log.info(uid);
        // Model에 회원 아이디 값을 저장하여 View로 전달합니다.
        MemberDto member = new MemberDto();
        member.setUid(uid);
        model.addAttribute("member", member);

        return "homeAfter";
    }

    //사업자 로그인후 아이디 전달
    @GetMapping("homeBus")
    public String homeBus(HttpSession session, Model model) {
        log.info("homeBus");

        // 세션에서 음식점 사업자 아이디 값을 가져옵니다.
        String rid = (String) session.getAttribute("rid");
        log.info(rid);
        // Model에 회원 아이디 값을 저장하여 View로 전달합니다.
        ResMemberDto rmember = new ResMemberDto();
        rmember.setRid(rid);
        model.addAttribute("rmember", rmember);

        // 세션에서 택시 사업자 아이디 값을 가져옵니다.
        String tid = (String) session.getAttribute("tid");
        log.info(tid);
        // Model에 회원 아이디 값을 저장하여 View로 전달합니다.
        TaxMemberDto tmember = new TaxMemberDto();
        tmember.setTid(tid);
        model.addAttribute("tmember", tmember);

        // 세션에서 프로그램 사업자 아이디 값을 가져옵니다.
        String pid = (String) session.getAttribute("pid");
        log.info(pid);
        // Model에 회원 아이디 값을 저장하여 View로 전달합니다.
        ProMemberDto pmember = new ProMemberDto();
        pmember.setPid(pid);
        model.addAttribute("pmember", pmember);

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

    @PostMapping("rLoginProc")
    public String rLoginProc(ResMemberDto rmember,
                             HttpSession session,
                             RedirectAttributes rttr){
        log.info("rLoginProc()");
        String view = rServ.rLoginProc(rmember,session,rttr);
        return view;
    }


    ///////////택시////////////
    @GetMapping("tIdCheck")
    @ResponseBody           //REST 방식일 때 꼭 넣을 것.
    public String tIdCheck(String tid){
        log.info("tIdCheck()");
        String res = tServ.tIdCheck(tid);

        return res;
    }

    @PostMapping ("taxJoinProc")
    public String taxJoinProc(TaxMemberDto tmember, RedirectAttributes rttr){
        log.info("taxJoinProc()");
        String view = tServ.taxJoin(tmember, rttr);

        return view;
    }

    @GetMapping("taxLogin")
    public String taxLogin(){
        log.info("taxLogin()");
        return "taxLogin";
    }

    @PostMapping("tLoginProc")
    public String tLoginProc(TaxMemberDto tmember,
                              HttpSession session,
                              RedirectAttributes rttr){
        log.info("tLoginProc()");
        String view = tServ.tLoginProc(tmember,session, rttr);

        return view;
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

    //사용자 로그아웃
    @GetMapping("logout")
    public String logout(HttpSession session){
        log.info("logout()");
        String view = mServ.logout(session);
        return view;
    }

    //음식점 로그아웃
    @GetMapping("rlogout")
    public String rlogout(HttpSession session){
        log.info("rlogout()");
        String view = rServ.rlogout(session);
        return view;
    }

    //택시 로그아웃
    @GetMapping("tlogout")
    public String tlogout(HttpSession session){
        log.info("tlogout()");
        String view = tServ.tlogout(session);
        return view;
    }

    //프로그램 로그아웃
    @GetMapping("plogout")
    public String plogout(HttpSession session){
        log.info("plogout()");
        String view = pServ.plogout(session);
        return view;
    }

    @GetMapping("mapAfter")
    public String mapAfter(){
        log.info("mapAfter()");
        return "mapAfter";
    }

    @GetMapping("introduceAfter")
    public String introduceAfter(){
        log.info("introduceAfter()");
        return "introduceAfter";
    }

    //관련 시설 이동
    @GetMapping("staInfo")
    public String staInfo(){
        log.info("staInfo()");
        return "staInfo";
    }

    //관련 사이트 이동
    @GetMapping("reSite")
    public String reSite(){
        log.info("reSite()");
        return "reSite";
    }

    //고객센터 이동
    @GetMapping("cusCenter")
    public String cusCenter(){
        log.info("cusCenter()");
        return "cusCenter";
    }

    @GetMapping("userInfo")
    public ModelAndView userInfo(String uid){
        log.info("userInfo()");
        mv = mServ.getMember(uid);

        return mv;
    }






}//class end
